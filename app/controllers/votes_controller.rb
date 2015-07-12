class VotesController < ApplicationController

	def index 
		@votes = Vote.all

		render "votes/index"
	end 


	def new 
		@vote = Vote.new 

		render "votes/new"
	end 

	def create 
		@vote = Vote.new(vote_params)

		if @vote.save 
			redirect_to votes_path
		else 
			render "votes/new"
		end 
	end 

	def edit 
		@vote = Vote.find(params[:id])

		render "votes/edit"
	end 

	def update 
		@vote = Vote.find(params[:id])

		if @vote.update(vote_params)
			redirect_to votes_path
		else
			render "votes/edit"
		end 
	end 

	def destroy 
		@vote = Vote.find(params[:id])
		@vote.destroy 

		redirect_to votes_path
	end 

	def show 
		@vote = Vote.find_by_id(params[:id])

		render "votes/show"
	end 

	def vote_params 
		params.require(:vote).permit!
	end 
end
