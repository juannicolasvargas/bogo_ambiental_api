module Api
  module V1
    module Auth
      class RegistrationsController < DeviseTokenAuth::RegistrationsController

        def render_create_success
          render json: current_user
        end

        private

        def sign_up_params
          params.permit(:email, :password, :password_confirmation, :name, :last_name)
        end
      end
    end
  end
end
