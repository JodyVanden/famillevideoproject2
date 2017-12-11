class VideosController < ApplicationController
  include UsersHelper

  def index
    if vanden?(current_user)
      @videos = Video.all
      video_info_nil_index(@videos)
    elsif marion?(current_user)
      @videos = Video.where(is_public: true)
      video_info_nil_index(@videos)
    else @videos = []
    end
  end

  def show
    #filter the users. If part of the Vanden family then all video are listed
    if vanden?(current_user)
      @video = Video.find(params[:id])
    #filter the users. If part of the marion famil then only pulbic video are listed
    elsif marion?(current_user)
      @video = Video.find(params[:id])
      if @video.is_public?
      else redirect_to not_allowed_path
      end
    else @video = []
    end
    #create a new comment in case the video is displayed
    @comment = Comment.new()
    #Check if the video information are available. If not then user gem VideoInfo
    # video_info_nil_show
  end

  def new
    #create a new video. only allowed for admin user
    if admin?(current_user)
      @video = Video.new
    else redirect_to not_allowed_path
    end
  end

  def create
    if admin?(current_user)

      @video = Video.new(video_params)

      #get all information from youtube with the gem VideoInfo
      video_youtube_info = VideoInfo.new(@video.url)
      @video.youtube_id = video_youtube_info.video_id
      @video.name = video_youtube_info.title
      @video.description = video_youtube_info.description
      @video.save

      redirect_to video_path(@video)
    else redirect_to not_allowed_path
    end
  end

  def edit
    if admin?(current_user)
      @video = Video.find(params[:id])
    else redirect_to not_allowed_path
    end
  end

  def update
    if admin?(current_user)
      @video = Video.find(params[:id])
      @video.update(video_params)
      redirect_to video_path
    else redirect_to not_allowed_path
    end
  end

  def destroy
    if admin?(current_user)
      @video = Video.find(params[:id])
      @video.destroy
      redirect_to videos_path
    else redirect_to not_allowed_path
    end
  end

  private

  def video_params
    params.require(:video).permit(:name, :url, :description, :is_public)
  end

  def video_info_nil_index(videos)
    # binding-pry
    videos.each do |video|
      if video.youtube_id.nil?
         # pattern = /(?:https\:\/\/youtu\.be)\/(?<youtube_id>.+)/
        # match_data = @video.url.match(pattern)
        # @video.youtube_id = match_data[:youtube_id]
        video_youtube_info = VideoInfo.new(video.url)
        video.youtube_id = video_youtube_info.video_id
        video.image_url = video_youtube_info.thumbnail_large
      end
      video.save
    end
  end

  def video_info_nil_show
    if @video.youtube_id.nil?
      # pattern = /(?:https\:\/\/youtu\.be)\/(?<youtube_id>.+)/
      # match_data = @video.url.match(pattern)
      # @video.youtube_id = match_data[:youtube_id]
      video_youtube_info = VideoInfo.new(@video.url)
      @video.youtube_id = video_youtube_info.video_id
      @video.save
    end
  end

end
