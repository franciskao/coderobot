class UsersController < ApplicationController
	def new
		@user =User.new
	end
	def create
  		@user = User.new(params[:user])
  		@user.save
  		redirect_to @user
	end
	def show
		@user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		@user.attributes = params[:user]
		if @user.save
			redirect_to @user
		else 
			render 'edit'
		end
	end
	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to @user
	end
	def index
		@users = User.all
	end
end
