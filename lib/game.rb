load "../lib/create_player.rb"
load "../lib/board.rb"

$ar = (1..9).to_a
def board ar
    puts "\n #{ar[0]} | #{ar[1]} | #{ar[2]} \n---+---+--- \n #{ar[3]} | #{ar[4]} | #{ar[5]} \n---+---+--- \n #{ar[6]} | #{ar[7]} | #{ar[8]}\n \n"
end

def mark_selection
    p "Player 1, what is your name?"
    $player1 = CreatePlayer.new
    $player1.name = gets.chomp
    $player1.mark = choose_mark $player1.name
    p "#{$player1.name}, your mark is #{$player1.mark}"
    p "Player 2, what is your name?"
    $player2 = CreatePlayer.new
    $player2.name = gets.chomp
    $player1.mark == 'X' ? $player2.mark = 'O' : $player2.mark = 'X'
    p "#{$player2.name}, your mark is #{$player2.mark}"
    board $ar
end

def player_turn player
    p "#{player.name}, where do you want to put your mark? (#{player.mark})"
    player1_selection = gets.chomp.to_i
    until $ar.include?(player1_selection) 
        p "Enter a correct number"
        player1_selection = gets.chomp.to_i
    end
    $ar[player1_selection-1] = player.mark
end

def selection
    turns = 1
    while turns <= 9
        if turns % 2 == 1
            player_turn $player1
        else
            player_turn $player2
        end
        turns += 1
        board $ar
    end
end