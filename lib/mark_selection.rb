load "../lib/create_player.rb"

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

mark_selection