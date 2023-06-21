class ManagersController < ApplicationController
    def index
        managers = Manager.all

        render json: managers, status: :ok
    end

    def show
        manager = Manager.find(manager_params[:id])

        render json: manager, status: :ok
    end

    private
    def manager_params
        params.permit(:id)
    end
end
