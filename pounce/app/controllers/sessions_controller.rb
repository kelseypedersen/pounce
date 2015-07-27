class SessionsController < ApplicationController

  def create
    user = User.create_or_login
    session[:user_id] = user.id
    redirect_to user_wants_path(user)
  end

  def destroy
    session[:user_id] = nil
  end

end
