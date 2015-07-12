class CandidatesController < ApplicationController
	
	def index 
		@candidates = Candidate.all

		render "candidates/index"
	end 


	def new 
		@candidate = Candidate.new 

		render "candidates/new"
	end 

	def create 
		@candidate = Candidate.new(candidate_params)

		if @candidate.save 
			redirect_to candidates_path
		else 
			render "candidates/new"
		end 
	end 

	def edit 
		@candidate = Candidate.find(params[:id])

		render "candidates/edit"
	end 

	def update 
		@candidate = Candidate.find(params[:id])

		if @candidate.update(candidate_params)
			redirect_to candidates_path
		else
			render "candidates/edit"
		end 
	end 

	def destroy 
		@candidate = Candidate.find(params[:id])
		@candidate.destroy 

		redirect_to candidates_path
	end 

	def show 
		@candidate = Candidate.find_by_id(params[:id])

		render "candidates/show"
	end 

	def candidate_params 
		params.require(:candidate).permit!
	end 
end
