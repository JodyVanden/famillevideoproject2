class VideosController < ApplicationController

  def index
    if current_user.allow_non_public?
      @videos = Video.all
    else
      @videos = Video.where(is_public: true)
    end

    @videos.each do |video|
      if video.youtube_id.nil?
        pattern = /(?:https\:\/\/youtu\.be)\/(?<youtube_id>.+)/
        match_data = video.url.match(pattern)
        video.youtube_id = match_data[:youtube_id]
      end
        video.save
    end
  end

  def show
    @video = Video.find(params[:id])
    if @video.youtube_id.nil?
        pattern = /(?:https\:\/\/youtu\.be)\/(?<youtube_id>.+)/
        match_data = @video.url.match(pattern)
        @video.youtube_id = match_data[:youtube_id]
        @video.save
      end
    @content = Comment.new
    @mark = Mark.new
  end
end
