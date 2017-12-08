class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= session[:user]  # Use find_by_id to get nil instead of an error if user doesn't exist
  end

  helper_method :current_user #make this method available in views
end
