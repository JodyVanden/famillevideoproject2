class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    @content = Comment.new
    @mark = Mark.new
  end
end
