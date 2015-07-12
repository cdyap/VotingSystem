class UsersController < ApplicationController
	
	def index 
		@users = User.all

		render "users/index"
	end 


	def new 
		@user = User.new 

		render "users/new"
	end 

	def create 
		@user = User.new(user_params)

		if @user.save 
			redirect_to users_path
		else 
			render "users/new"
		end 
	end 

	def edit 
		@user = User.find(params[:id])

		render "users/edit"
	end 

	def update 
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to users_path
		else
			render "users/edit"
		end 
	end 

	def destroy 
		@user = User.find(params[:id])
		@user.destroy 

		redirect_to users_path
	end 

	def show 
		@user = User.find_by_id(params[:id])

		render "users/show"
	end 

	def user_params 
		params.require(:user).permit!
	end 
end
