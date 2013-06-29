class QuizzesController < ApplicationController
	def new
	    @course = Course.find(params[:course_id])
		@quiz = Quiz.new
	end

	def show
 		@quiz = Quiz.find(params[:id])
	end

	def create
	    @course = Course.find(params[:course_id])
	    @quiz = @course.quizzes.create(params[:quiz])
	    redirect_to course_quizzes_path(@course)
	end
	def edit
	    @course = Course.find(params[:course_id])
  		@quiz = Quiz.find(params[:id])
	end
	def check
		@course = Course.find(params[:course_id])
		@quiz =Quiz.find(params[:quiz_id])
		@choices = @quiz.choices
		@result = true
		@choices.each do |choice|
		 	if choice.isAnswer
		        if !params[choice.index.to_s()]
		        	@result = false
		        end
		    elsif params[choice.index.to_s()]
		    	@result = false
		    end
		end
	end
	def update
	    @course = Course.find(params[:course_id])
		@quiz = Quiz.find(params[:id])
		@quiz.attributes = params[:quiz]
		if @quiz.save
			redirect_to course_quizzes_path(@course)
		else
			render 'edit'
		end
	end
	def destroy
	  @quiz = Quiz.find(params[:id])
	  @quiz.destroy
	 
	  redirect_to course_quiz_path(@quiz)
	end
	def index
		@course = Course.find(params[:course_id])
		@quizzes = @course.quizzes.all
	end
end
