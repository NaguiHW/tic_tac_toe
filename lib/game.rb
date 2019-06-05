load "../lib/create_player.rb"
load "../lib/board.rb"

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
    $player1
end

def board
    ar = (1..9).to_a
    puts "\n #{ar[0]} | #{ar[1]} | #{ar[2]} \n---+---+--- \n #{ar[3]} | #{ar[4]} | #{ar[5]} \n---+---+--- \n #{ar[6]} | #{ar[7]} | #{ar[8]}\n"
end

def selection
    turns = 1
    while turns <= 9
        board
        if turns % 2 == 1
            p "#{$player1.name}, where do you want to put your mark? (#{$player1.mark})"
            player1_selection = gets.chomp
            ar[player1_selection-1] = "X"
        else
            player = $player2
            p "#{$player2.name}, where do you want to put your mark? (#{$player2.mark})"
            player2_selection = gets.chomp
            ar[player2_selection-1] = "O"
        end
        turns += 1
    end
end