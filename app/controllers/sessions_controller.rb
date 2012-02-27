class SessionsController < ApplicationController

def new  
end

def create
  user = User.find_by_email(params[:email])
  if user.present? && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to user_home_url, :notice => "Successful login!"
  else 
    redirect_to new_session_url, :error => "Something wasn't right. Try again!"
  end
end

def logout
  reset_session
  redirect_to root_url, :notice => "Successful logout!"
end

end
