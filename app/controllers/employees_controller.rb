class EmployeesController < ApplicationController

  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate_employee!, expect: [:new]

  def dashboard

  end

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
      if @employee.save
        redirect_to  employees_path  , notice:'Employee created'
      else
        render 'new'
      end
  end

  def edit

  end

  def update
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render action: 'edit'
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:email, :password, :password_confirmation, :isadmin)
  end


end