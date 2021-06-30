class EmployeesController < ApplicationController
  def index
    render json: Employee.all
  end

  def create
    employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      job_title: params[:job_title],
      department_id: params[:department_id]
    )
    employee.save
    render json: employee.as_json
  end
end
