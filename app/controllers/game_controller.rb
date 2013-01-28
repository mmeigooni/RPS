require 'winning'

class GameController < ApplicationController
	OPTIONS = [:rock, :paper, :scissors]
	PIC_URLS = { rock: 'rock.jpg', paper: 'paper.png', scissors: 'scissors.jpg' }.with_indifferent_access

	def winning
		user_choice = params[:choose].try(:to_sym)
		comp_choice = OPTIONS.shuffle[0]
    some_pics = [PIC_URLS[user_choice], PIC_URLS[comp_choice]]

		@array_of_pics = user_choice ? some_pics : PIC_URLS.values

		@result = Choice.compare(user_choice, comp_choice) || :pick
    puts @result
	end
end

