class SessionsController < ApplicationController
  skip_before_filter :require_login

  def new

  end

  def create
    puts params[:employee_id]
    employee = Employee.find(params[:employee_id][0]) # why [0]?
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      if employee.manager
        redirect_to 'employees#backend'
      else
        redirect_to 'duties#approve'
      end
    end
  else
    redirect_to root_url
  end

  def destroy
    session[:employee_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
