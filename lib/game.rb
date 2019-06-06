# frozen_string_literal: true

require_relative 'create_player.rb'

class Game

  def initialize
    $ar = (1..9).to_a
    $turns = 1
  end

  def selection
    while $turns <= 9
      if $turns.odd?
        player_turn $player1
        who_wins $player1
      else
        player_turn $player2
        who_wins $player2
      end
      $turns += 1
      board $ar
    end
  end

  private
  def board(ar)
    puts "\n #{ar[0]} | #{ar[1]} | #{ar[2]} \n---+---+--- \n #{ar[3]} | #{ar[4]} | #{ar[5]} \n---+---+--- \n #{ar[6]} | #{ar[7]} | #{ar[8]}\n \n"
  end

  def player_turn(player)
    p "#{player.name}, where do you want to put your mark? (#{player.mark})"
    player1_selection = gets.chomp.to_i
    until $ar.include?(player1_selection)
      p 'Enter a correct number'
      player1_selection = gets.chomp.to_i
    end
    player.player_ar << player1_selection
    $ar[player1_selection - 1] = player.mark
  end

  def who_wins(player)
    if player.player_ar.include?(1) && player.player_ar.include?(2) && player.player_ar.include?(3)
      answear player
    elsif player.player_ar.include?(4) && player.player_ar.include?(5) && player.player_ar.include?(6)
      answear player
    elsif player.player_ar.include?(7) && player.player_ar.include?(8) && player.player_ar.include?(9)
      answear player
    elsif player.player_ar.include?(1) && player.player_ar.include?(4) && player.player_ar.include?(7)
      answear player
    elsif player.player_ar.include?(2) && player.player_ar.include?(5) && player.player_ar.include?(8)
      answear player
    elsif player.player_ar.include?(3) && player.player_ar.include?(6) && player.player_ar.include?(9)
      answear player
    elsif player.player_ar.include?(1) && player.player_ar.include?(5) && player.player_ar.include?(9)
      answear player
    elsif player.player_ar.include?(3) && player.player_ar.include?(5) && player.player_ar.include?(7)
      answear player
    else
      p 'Nobody wins'
    end
  
    def answear(player)
      p "#{player.name} is the winner"
      $turns = 9
    end
  end

end
