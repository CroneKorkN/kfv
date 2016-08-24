class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login, except: [:login, :signup]
  helper_method :current_user, :authorize
  layout proc{ false if request.xhr? }
  def current_user
    @current_user ||= Employee.find_by(id: session[:user_id])
  end

  private

  def require_login
    redirect_to login_url unless current_user
  end
end
