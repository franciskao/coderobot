class VideosController < ApplicationController
	def new
	    @course = Course.find(params[:course_id])
		@video = Video.new
	end

	def show
 		@video = Video.find(params[:id])
	end

	def create
	    @course = Course.find(params[:course_id])
	    @video = @course.videos.create(params[:video])
	    redirect_to course_videos_path(@course)
	end
	def edit
	    @course = Course.find(params[:course_id])
  		@video = Video.find(params[:id])
	end
	def update
	    @course = Course.find(params[:course_id])
		@video = Video.find(params[:id])
		@video.attributes = params[:video]
		if @video.save
			redirect_to course_videos_path(@course)
		else
			render 'edit'
		end
	end
	def destroy
	  @video = Video.find(params[:id])
	  @video.destroy
	 
	  redirect_to course_video_path(@video)
	end
	def index
		@course = Course.find(params[:course_id])
		@videos = @course.videos.all
	end
end
