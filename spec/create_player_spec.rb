# frozen_string_literal: true

require './lib/create_player.rb'

describe CreatePlayer do
  class CreatePlayer
    attr_accessor :name, :mark
    def initialize
      @player_ar = []
    end
    attr_reader :player_ar
  end

  describe 'choose_mark' do
    player = CreatePlayer.new
    player.name = 'Player'
    arr = %w[X O]
    it "Check the input if it's an X or O" do
      expect(arr.any?(player.choose_mark(player))).to eql(true)
    end
  end
end

