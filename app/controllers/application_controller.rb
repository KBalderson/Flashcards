class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
    if cookies.signed[:user_id]
      @current_user ||= User.find_by_id(cookies.signed[:user_id])
    end
  end
  helper_method :current_user
  
  def signed_in?
    current_user
  end
  helper_method :signed_in?
  
end
