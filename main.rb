require 'pry'
require_relative './game.rb'
require_relative './player.rb'
require_relative './question.rb'

module MathGame
end

game = MathGame::Game.new
game.play
