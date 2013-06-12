
class Game

	attr_accessor :pins

	def initialize
		@rolls = []
	end

	def roll(pins)
		@rolls << pins
	end

	def score
		score = 0
		array_index = 0
		frame = 0
		while frame < 10
			if @rolls[array_index] + @rolls[array_index + 1] == 10
				score += 10 + @rolls[array_index + 2]
				array_index += 2
			else
			  score += @rolls[array_index] + @rolls[array_index + 1]
			  array_index += 2
		  end
		  score
	  end
  end
end
