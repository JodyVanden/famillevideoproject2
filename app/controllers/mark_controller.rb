class MarkController < ApplicationController

  def create
    @video = Video.find(params[:id])
    @user = User.find(params[:user])
    @mark = Mark.new(mark_params)
    @mark.video = @video
    if @mark.save
      redirect_to video_path(@video)
    else
      render video/show
    end
  end

  private

  def comment_params
    params.require(:mark).permit(:mark)
  end
end
