require 'winning'

class GameController < ApplicationController
	OPTIONS = [:rock, :paper, :scissors]
	PIC_URLS = { rock: 'rock.jpg', paper: 'paper.png', scissors: 'scissors.jpg' }

	def winning
		user_choice = params[:choose].capitalize.constantize.new if params[:choose]
		comp_choice = OPTIONS.shuffle[0].to_s.capitalize.constantize.new
		some_pics = [PIC_URLS[@user_choice], PIC_URLS[@comp_choice]]

		@array_of_pics = if user_choice
			some_pics
		else
			PIC_URLS.values
		end

		@result = if user_choice
			if user_choice > comp_choice
				:win
			elsif user_choice < comp_choice
				:lose
			else
				:tie
			end
		else
			:pick
		end
	end

end

