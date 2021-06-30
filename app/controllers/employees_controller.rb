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

  def show
    employee = Employee.find_by(id: params[:id])
    render json: employee.as_json
  end

  def update
    employee = Employee.find_by(id: params[:id])
      employee.first_name = params[:first_name] || employee.first_name
      employee.last_name = params[:last_name] || employee.last_name
      employee.email = params[:email] || employee.email
      employee.phone_number = params[:phone_number] || employee.phone_number
      employee.job_title = params[:job_title] || employee.job_title
      employee.department_id = params[:department_id] || employee.department_id
      employee.save
    render json: employee.as_json
  end
end
