module UsersHelper

  def admin?(current_user)
    current_user && current_user.admin
  end

  def vanden?(current_user)
    current_user && current_user.family == "vanden"
  end

  def marion?(current_user)
    current_user && current_user.family == "marion"
  end
end
