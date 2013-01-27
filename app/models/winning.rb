
class Winning 
	def Winning.outcome_pics

		@options = ["rock", "paper", "scissors"]
		@comp_choice = @options.shuffle[0]
		@user_choice = params["choose"]
		@pic_urls = {"rock" => "http://www.cspp52553.com/assets/rps/rock.jpg", "paper" => "http://www.cspp52553.com/assets/rps/paper.png", 
			"scissors" => "http://www.cspp52553.com/assets/rps/scissors.jpg"}
		@some_pics = [@pic_urls[@user_choice], @pic_urls[@comp_choice]]


		if @user_choice == nil
			array_of_pics = [@pic_urls["rock"], @pic_urls["paper"], @pic_urls["scissors"]]
		else
			array_of_pics = @some_pics
		end

		return array_of_pics
	end

	def Winning.outcome_words
		if @user_choice == @comp_choice
			win_lose_draw = "It's a tie."
		elsif @user_choice == "rock" && @comp_choice == "scissors" ||
				@user_choice == "paper" && @comp_choice == "rock" ||
				@user_choice == "scissors" && @comp_choice == "paper"
			win_lose_draw == "You win!"
		else
			win_lose_draw == "You lose :("
		end

		return win_lose_draw
	end

end




# @pics = Winning.outcome_pics

# if @user_choice != nil
# 	@result = Winning.outcome_words
# else
# 	@result = "Let's play! Choose one:"
# end

# puts @pics.inspect
# puts @result




