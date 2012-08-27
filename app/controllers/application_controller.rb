class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  helper_method :current_user
  helper_method :admin?
  
  before_filter :require_login

protected

def check_access
	if (current_user && current_user.app_role.code != 'APP_ADMIN') 
		redirect_to root_url, :notice => 'Unauthorized Access'
	end
end 

private
def admin?
	if current_user.app_role.code == 'APP_ADMIN'
		true
	else
		false
	end
end

def require_login
    unless current_user     
       redirect_to log_in_url
    end
end

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
  
end
