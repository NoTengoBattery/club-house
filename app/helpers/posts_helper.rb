module PostsHelper
  def show_user(resource)
    if user_signed_in?
      resource.user.user_name
    else
      '...'
    end
  end
end
