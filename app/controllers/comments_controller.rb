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
      respond_to do |format|
        format.html { redirect_to video_path(@video) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'videos/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @video = Video.find(params[:video_id])
    @comment.destroy
    redirect_to video_path(@video)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
