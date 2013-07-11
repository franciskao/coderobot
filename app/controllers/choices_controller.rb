class ChoicesController < ApplicationController
	def new
	    @quiz = Quiz.find(params[:quiz_id])
		@choice = Choice.new
	end

	def show
 		@choice = Choice.find(params[:id])
	end

	def create
	    @quiz = Quiz.find(params[:quiz_id])
	    @choice = @quiz.choices.create(params[:choice])
	    redirect_to (:back)
	end
	def edit
	    @quiz = Quiz.find(params[:quiz_id])
  		@choice = Choice.find(params[:id])
	end
	def update
	    @quiz = Quiz.find(params[:quiz_id])
		@choice = Choice.find(params[:id])
		@choice.attributes = params[:choice]
		if @choice.save
			redirect_to (:back)
		else
			render 'edit'
		end
	end
	def destroy
	  @choice = Choice.find(params[:id])
	  @choice.destroy
	 
	  redirect_to (:back)
	end
	def index
		@course =Course.find(params[:course_id])
		@quiz = Quiz.find(params[:quiz_id])
		@choices = @quiz.choices.all
	end
end
