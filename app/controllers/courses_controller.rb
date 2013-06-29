class CoursesController < ApplicationController
	def new
		@course =Course.new
	end
	def create
  		@course = Course.new(params[:course])
  		@course.save
  		redirect_to @course
	end
	def show
		@course = Course.find(params[:id])
	end
	def edit
		@course = Course.find(params[:id])
	end
	def update
		@course = Course.find(params[:id])
		@course.attributes = params[:course]
		if @course.save
			redirect_to @course
		else 
			render 'edit'
		end
	end
	def destroy
		@course = Course.find(params[:id])
		@course.destroy

		redirect_to @course
	end
	def index
		@courses = Course.all
	end
end
