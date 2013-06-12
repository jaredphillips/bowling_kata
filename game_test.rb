require 'test/unit'
require './game.rb'

class GameTest < Test::Unit::TestCase


	def test_should_be_able_to_create_a_new_game
		game = Game.new, "Should be able to create a new game"
		assert game 
	end

	def test_should_be_able_to_roll_ball
		game = Game.new
		assert game.roll(0)
	end

	def test_it_should_return_zero_for_a_gutter_game
		game = Game.new
		20.times do
			game.roll(0)
		end
		assert_equal game.score, 0
	end

	def test_it_should_return_20_for_a_game_of_all_ones
		game = Game.new
		20.times do
			game.roll(1)
		end
		assert_equal game.score, 20
	end

	def test_game_can_account_for_spare
		game = Game.new
		game.roll(5)
		game.roll(5)
		game.roll(3)
		assert_equal 17, game.score
	end

end