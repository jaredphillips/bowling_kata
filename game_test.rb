require 'test/unit'
require './game.rb'

class GameTest < Test::Unit::TestCase


	def test_should_be_able_to_create_a_new_game
		game = Game.new, "Should be able to create a new game"
		assert game 
	end

	def test_should_be_able_to_roll_ball
		game = Game.new
		puts game.roll(pins)
		assert game.roll(0)
	end


end