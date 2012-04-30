class ApplicationController < ActionController::Base
  protect_from_forgery

  def is_admin?
  	current_user.admin
  end
  
end
