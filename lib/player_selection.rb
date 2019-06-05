# frozen_string_literal: true

load '../lib/mark_selection.rb'

def selection
  turns = 1
  while turns <= 9
    if turns.odd?
      p "#{$player1.name}, where do you want to put your mark? (#{$player1.mark})"
    else
      p "#{$player2.name}, where do you want to put your mark? (#{$player2.mark})"
    end
    turns += 1
  end
end
