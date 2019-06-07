# frozen_string_literal: true

require_relative 'board.rb'

# This class is for create new players
class CreatePlayer
  
  def mark_selection
    p 'Player 1, what is your name?'
    $player1 = CreatePlayer.new
    $player1.name = gets.chomp
    $player1.mark = choose_mark $player1.name
    p "#{$player1.name}, your mark is #{$player1.mark}"
    p 'Player 2, what is your name?'
    $player2 = CreatePlayer.new
    $player2.name = gets.chomp
    $player2.mark = ($player1.mark == 'X' ? 'O' : 'X')
    p "#{$player2.name}, your mark is #{$player2.mark}"
    board
  end

  private
  
  def choose_mark(player)
    p "#{player}, which mark do you want? X or O"
    mark = gets.chomp.upcase
    until (mark == 'X') || (mark == 'O')
      p 'Introduce a valid mark. X or O'
      mark = gets.chomp.upcase
    end
    mark
  end
end

# Create Players
class CreatePlayer
  attr_accessor :name, :mark
  def initialize
    @player_ar = []
  end
  attr_reader :player_ar
end
