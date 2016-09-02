class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  helper_method :current_user
  layout proc{ false if request.xhr? }

  def current_user
    p session[:employee_id]
    @current_user ||= Employee.find_by(id: session[:employee_id])
  end

  private

  def require_login
    redirect_to login_url unless current_user
  end
end
