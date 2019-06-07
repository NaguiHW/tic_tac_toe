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
  
end 

def answear(player)
  p "#{player.name} is the winner"
  $turns = 9
end

p who_wins(player)