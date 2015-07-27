class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def get_user
  	if params[:id]
    	@user ||= User.find(params[:id])
    else
    	@user ||= User.find(params[:user_id])
    end
  end

end
