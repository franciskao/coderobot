class ExercisesController < ApplicationController
	def new
	    @course = Course.find(params[:course_id])
		@exercise = Exercise.new
	end

	def show
 		@exercise = Exercise.find(params[:id])
	end

	def create
	    @course = Course.find(params[:course_id])
	    @exercise = @course.exercises.create(params[:exercise])
	    redirect_to course_exercises_path(@course)
	end
	def edit
	    @course = Course.find(params[:course_id])
  		@exercise = Exercise.find(params[:id])
	end
	def update
	    @course = Course.find(params[:course_id])
		@exercise = Exercise.find(params[:id])
		@exercise.attributes = params[:exercise]
		if @exercise.save
			redirect_to course_exercises_path(@course)
		else
			render 'edit'
		end
	end
	def check
		@course = Course.find(params[:course_id])
		@exercise =Exercise.find(params[:exercise_id])
		@attempt=params["attempt"]
		@answer = Exercise.find(params[:exercise_id]).answer
		if (@attempt === @answer)
			@result = true
			render 'result'
		else
			@result = false
			render 'result'
		end
	end
	def destroy
	  @exercise = Exercise.find(params[:id])
	  @exercise.destroy
	 
	  redirect_to course_exercise_path(@exercise)
	end
	def index
		@course = Course.find(params[:course_id])
		@exercises = @course.exercises.all
	end
end
