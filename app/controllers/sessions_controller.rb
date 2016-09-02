class SessionsController < ApplicationController
  skip_before_filter :require_login

  def new

  end

  def create
    employee = Employee.find_by(name: params[:name])
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      redirect_to root_url, notice: 'Logged in!'
    else
      redirect_to root_url
    end
  end

  def destroy
    session[:employee_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
