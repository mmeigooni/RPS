
class GameController < ApplicationController

	def winning

		@pics = Winning.outcome_pics

		if @user_choice != nil
			@result = Winning.outcome_words
		else
			@result = "Let's play! Choose one:"
		end


	end

end

