class VideosController < ApplicationController

  def index
    if current_user.allow_non_public?
      @videos = Video.all
    else
      @videos = Video.where(is_public: true)
    end

    @videos.each do |video|
      if video.youtube_id.nil?
         # pattern = /(?:https\:\/\/youtu\.be)\/(?<youtube_id>.+)/
        # match_data = @video.url.match(pattern)
        # @video.youtube_id = match_data[:youtube_id]
        video_youtube_info = VideoInfo.new(@video.url)
        @video.youtube_id = video_youtube_info.video_id
      end
        video.save
    end
  end

  def show
    @video = Video.find(params[:id])
      if !@video.is_public? && current_user.allow_non_public?
        @video = Video.find(params[:id])
      elsif @video.is_public?

      else redirect_to not_allowed_path
    end


    if @video.youtube_id.nil?
        # pattern = /(?:https\:\/\/youtu\.be)\/(?<youtube_id>.+)/
        # match_data = @video.url.match(pattern)
        # @video.youtube_id = match_data[:youtube_id]
        video_youtube_info = VideoInfo.new(@video.url)
        @video.youtube_id = video_youtube_info.video_id
        @video.save
      end
    @content = Comment.new
    @mark = Mark.new
  end

  def new
    @video = Video.new

  end

  def create
    @video = Video.new(video_params)
    video_youtube_info = VideoInfo.new(@video.url)
    @video.youtube_id = video_youtube_info.video_id

    @video.name = video_youtube_info.title
    @video.description = video_youtube_info.description
    @video.save
    redirect_to video_path(@video)
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to video_path
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    redirect_to videos_path
  end

  private

  def video_params
    params.require(:video).permit(:name, :url, :description, :is_public)
  end

end
