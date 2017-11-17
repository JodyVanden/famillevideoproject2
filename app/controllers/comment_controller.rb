class CommentController < ApplicationController

  def new
    @video = Video.find(params[:id])
    @comment = Comment.new
  end

  def create
    @video = Video.find(params[:id])
    @comment = Comment.new(comment_params,@video)
    @comment.user = current_user
    @comment.video = @video
    if @comment.save
      redirect_to video_path(@video)
    else
      render video/show
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
