class SessionsController < ApplicationController
skip_before_filter :require_login
before_filter :go_to_root , :only => :new
def new

  end
  
  def create
    user = User.find_by_email(params[:email].downcase)
      if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to root_url, :notice => "Logged in!"
      else
        flash[:error] = "Invalid email or password"
        render "new" 
      end
  end 

  def destroy
    session[:user_id] = nil
    redirect_to log_in_url , :notice => "Logged out!"
  end
  
  private

  def go_to_root
    if current_user
      redirect_to root_url
    end
  end
end
