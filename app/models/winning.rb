# class Winning 

# 	def Winning.outcome_words
# 		if @user_choice == @comp_choice
# 			win_lose_draw = "It's a tie."
# 		elsif @user_choice == "rock" && @comp_choice == "scissors"
# 			win_lose_draw = "You win!"
# 		elsif @user_choice == "paper" && @comp_choice == "rock"
# 			win_lose_draw = "You win!"
# 		elsif @user_choice == "scissors" && @comp_choice == "paper"
# 			win_lose_draw = "You win!"
# 		else
# 			win_lose_draw = "You lose :("
# 		end

# 		return win_lose_draw
# 	end

# end


class Choice
  include Comparable

end

class InvalidChoiceError < StandardError; end

class Rock < Choice

	def <=>(other)
		if other.is_a? Rock
			0
		elsif other.is_a? Paper
			-1
		elsif other.is_a? Scissors
			1
		else
			raise InvalidChoiceError
		end
	end

end



class Paper < Choice

	def <=>(other)
		if other.is_a? Rock
			1
		elsif other.is_a? Paper
			0
		elsif other.is_a? Scissors
			-1
		else
			raise InvalidChoiceError
		end
	end

end



class Scissors < Choice

	def <=>(other)
		if other.is_a? Rock
			1
		elsif other.is_a? Paper
			-1
		elsif other.is_a? Scissors
			0
		else
			raise InvalidChoiceError
		end
	end

end







