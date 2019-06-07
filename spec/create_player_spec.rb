require './lib/create_player.rb'

describe CreatePlayer do

    class CreatePlayer
        attr_accessor :name, :mark
        def initialize
          @player_ar = []
        end
        attr_reader :player_ar
    end

    # player1 = CreatePlayer.new
    # player1.name = 'B'
    mark = "X"
    describe "choose_mark" do
        player = CreatePlayer.new
        it "Check the input if it's an X or O" do
            expect(player.choose_mark(player)).to eql(true)
        end
    end
end