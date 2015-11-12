class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]


	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
			puts "User Created"
		else
			render :new

		# else 
		# 	flash[:notice] = "User not created."
		# redirect_to new_user_path
		end
	end

def show
		# puts "Calling users#show with #{params[:id]}"
		# @user = User.find(params[:id])
	end

	def edit
		puts "This is edit"
	end

	def destroy
		User.find(params[:id]).destroy
		redirect_to users_path
	end

	private

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:fname, :lname, :email, :phone, :balance, :password, :password_confirmation)
	end

end
