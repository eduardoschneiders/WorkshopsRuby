class ApplicationController < ActionController::Base
  protect_from_forgery
  protected
  helper_method :current_user
  before_filter :auth
  
  def current_user
  	@current_user ||= User.find(session[:user_id]) rescue nil  	
  end

  def auth
  	redirect_to new_session_path unless current_user
  end
end
