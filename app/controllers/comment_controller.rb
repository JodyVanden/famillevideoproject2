class CommentController < ApplicationController

  def create
    @video = Video.find(params[:id])
    @comment = Comment.new(comment_params)
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
