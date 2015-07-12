class PositionsController < ApplicationController
	
	def index 
		@positions = Position.all

		render "positions/index"
	end 


	def new 
		@position = Position.new 

		render "positions/new"
	end 

	def create 
		@position = Position.new(position_params)

		if @position.save 
			redirect_to positions_path
		else 
			render "positions/new"
		end 
	end 

	def edit 
		@position = Position.find(params[:id])

		render "positions/edit"
	end 

	def update 
		@position = Position.find(params[:id])

		if @position.update(position_params)
			redirect_to positions_path
		else
			render "positions/edit"
		end 
	end 

	def destroy 
		@position = Position.find(params[:id])
		@position.destroy 

		redirect_to positions_path
	end 

	def show 
		@position = Position.find_by_id(params[:id])

		render "positions/show"
	end 

	def position_params 
		params.require(:position).permit!
	end 
end
