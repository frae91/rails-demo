class EmployeesController < ApplicationController

    def index
        employees = Employee.all
        
        render json: employees, status: :ok
    end

    def show
        employee = Employee.find(employee_params[:id])

        render json: employee, status: :ok
    end

    def create
        employee = Employee.create!(employee_params)

        render json: employee, status: :created
    end

    private

    def employee_params
        params.permit(:id, :name, :birthdate, :sex, :salary, :department_id)
    end
end
