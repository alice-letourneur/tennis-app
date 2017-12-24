class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
    User.find(session[:current_user_id]) if session[:current_user_id]
    #
  end
  helper_method :current_user
  # To be verified 
  def authorize
    redirect_to '/login' unless current_user
  end
end
