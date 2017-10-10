class CommentController < ApplicationController

  def new
    @video = Video.find(params[:id])
    @content = Comment.new
  end

  def create
    @video = Video.find(params[:id])
    @content = Comment.new(comment_params)
    @content.video = @video
    if @content.save
      redirect_to video_path(@video)
    else
      render video/show
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
