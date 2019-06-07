require './lib/game.rb'

describe Game do

    class CreatePlayer
        attr_accessor :name, :mark
        def initialize
          @player_ar = []
        end
        attr_reader :player_ar
    end

    player = CreatePlayer.new
    player.name = 'K'
    player.player_ar << 1
    player.player_ar << 2
    player.player_ar << 3

    def answear(player)
        p "#{player.name} is the winner"
        $turns = 9
    end

    describe '#who_wins(player)' do
        game = Game.new
        it 'if we have one of a kind in a row then it should return the player who wins' do
            expect(game.who_wins(player)).to eql("K is the winner", 9)
        end
        
    end

end
