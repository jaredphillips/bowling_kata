
class Game

	attr_accessor :pins

	def initialize
		@score = 0
	end

	def roll(pins)
		@score = score + pins
	end


	def score
		@score
	end

	def git_test
	end

end
