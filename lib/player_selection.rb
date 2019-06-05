load "../lib/mark_selection.rb"

def selection
    turns = 1
    while turns <= 9
        if turns % 2 == 1
            p "#{$player1.name}, where do you want to put your mark? (#{$player1.mark})"
        else
            player = $player2
            p "#{$player2.name}, where do you want to put your mark? (#{$player2.mark})"
        end
        turns += 1
    end
end
