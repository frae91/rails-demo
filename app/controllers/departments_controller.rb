class DepartmentsController < ApplicationController

    def index
        departments = Department.all

        render json: departments, status: :ok
    end

    def show
        department = Department.find(department_params[:id])

        render json: department, status: :ok
    end

    private

    def department_params
        params.permit(:id, :manager_id, :name)
    end
end
