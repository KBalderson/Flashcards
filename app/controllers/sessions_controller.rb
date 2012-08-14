class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_name(params[:session][:name])

    if user.try(:authenticate, params[:session][:password])
      cookies.signed[:user_id] = user.id
      redirect_to decks_path
    else
      redirect_to sign_in_path
    end
  end
  
  def destroy
    reset_session
    cookies.signed[:user_id] = nil
    redirect_to sign_in_path
  end
  
end