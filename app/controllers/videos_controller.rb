class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])

    if @video.youtube_id.nil?
      pattern = /(?:https\:\/\/youtu\.be)\/(?<youtube_id>.+)/
      match_data = @video.url.match(pattern)
      @video.youtube_id = match_data[:youtube_id]
    end

    @content = Comment.new
    @mark = Mark.new
  end
end
