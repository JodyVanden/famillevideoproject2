module ApplicationHelper
  def youtube_video(url)
    render :partial => 'shared/video', :locals => { :url => url }
  end

  def admin?(current_user)
    current_user && current_user.admin
  end
end
