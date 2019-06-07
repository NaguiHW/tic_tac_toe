# frozen_string_literal: true

require './lib/game.rb'

describe Game do
  class CreatePlayer
    attr_accessor :name, :mark
    def initialize
      @player_ar = []
    end
    attr_reader :player_ar
  end

  player1 = CreatePlayer.new
  player1.name = 'K'
  player1.player_ar << 3
  player1.player_ar << 5
  player1.player_ar << 7

  player2 = CreatePlayer.new
  player2.name = 'B'
  player2.player_ar << 2
  player2.player_ar << 5
  player2.player_ar << 9

  describe '#who_wins(player)' do
    game = Game.new
    it 'if we have one of a kind in a row then it should return the player who wins' do
      expect(game.who_wins(player1)).to eql('K is the winner')
    end
    it 'if we have one of a kind in a row then it should return the player who wins' do
      expect(game.who_wins(player2)).to eql('Nobody wins')
    end
  end
end
