# frozen_string_literal: true

# This class is for create new players
class CreatePlayer
  attr_accessor :name, :mark
  def initialize
    @player_ar = []
  end
  attr_reader :player_ar
end

def choose_mark(player)
  p "#{player}, which mark do you want? X or O"
  mark = gets.chomp.upcase
  until (mark == 'X') || (mark == 'O')
    p 'Introduce a valid mark. X or O'
    mark = gets.chomp.upcase
  end
  mark
end
