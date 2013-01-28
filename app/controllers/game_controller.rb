require 'winning'

class GameController < ApplicationController
	OPTIONS = [:rock, :paper, :scissors]
	PIC_URLS = { rock: 'rock.jpg', paper: 'paper.png', scissors: 'scissors.jpg' }.with_indifferent_access

	def winning
		choice_me = params[:choose]
		user_choice = choice_me.capitalize.constantize.new if params[:choose]
		choice_comp = OPTIONS.shuffle[0]
		comp_choice = choice_comp.to_s.capitalize.constantize.new
		some_pics = [PIC_URLS[choice_me], PIC_URLS[choice_comp]]

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

