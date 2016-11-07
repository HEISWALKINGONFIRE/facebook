class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  before_action :logged_in?
  def logged_in?
  	if !current_user
  		redirect_to new_session_path
  	end
  end
end
