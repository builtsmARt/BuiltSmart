module UsersHelper
  def current_user
   @current_user ||= User.find_by_id(session[:user_id])
  end

  def require_user
   redirect_to login_path unless current_user
  end

  def login?
   !!current_user
  end

  def authorized?(id)
   current_user.id == id.to_i
  end

  def authorize(id)
   redirect_to "/users/#{current_user.id}" unless authorized?(id)
  end
end
