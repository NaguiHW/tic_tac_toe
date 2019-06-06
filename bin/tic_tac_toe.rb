# frozen_string_literal: true

require_relative '../lib/welcome_message.rb'
require_relative '../lib/create_player.rb'
require_relative '../lib/game.rb'

WelcomeMessage.new
create_player = CreatePlayer.new
create_player.mark_selection
game = Game.new
game.selection
