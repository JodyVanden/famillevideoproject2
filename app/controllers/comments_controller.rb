class CommentsController < ApplicationController

  def new
    @video = Video.find(params[:video_id])
    @comment = Comment.new
  end

  def create
    @video = Video.find(params[:video_id])
    @comment = Comment.new(comment_params)
    @comment.video_id = @video.id
    @comment.user_id = current_user.id
    if @comment.save
     redirect_to video_path(@video)
    else
      render 'videos/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
