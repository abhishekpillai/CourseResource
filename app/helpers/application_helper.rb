module ApplicationHelper
  def flash_class(level)
    case level
      when :notice then 'info'
      when :error then 'error'
      when :alert then 'warning'
    end
  end
  
  def current_user
    User.find_by_id(session[:user_id])
  end
  
  def logged_in?
    session[:user_id].present?
  end

  def user_first_name
    current_user.name.split(" ")[0]
  end
end
