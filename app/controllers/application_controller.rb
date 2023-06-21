class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def render_record_invalid(invalid)
        render json: invalid.record.errors.full_messages, status: :unprocessable_entity
    end

    def render_record_not_found(invalid)
        render json: { error: "No record found" }, status: :not_found
    end
end
