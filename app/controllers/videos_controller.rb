class VideosController < ApplicationController

  def index
    @videos = Video.all

    @videos.each do |video|
      if video.youtube_id.nil?
        pattern = /(?:https\:\/\/youtu\.be)\/(?<youtube_id>.+)/
        match_data = video.url.match(pattern)
        video.youtube_id = match_data[:youtube_id]
        video.save!
      end
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
