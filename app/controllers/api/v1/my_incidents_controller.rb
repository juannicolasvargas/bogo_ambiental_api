module Api
  module V1
    class MyIncidentsController < ApplicationController
      before_action :authenticate_user!
      
      # GET /my_incidents
      def index
        incidents = current_user.incidents.paginate(page: params[:page], per_page: 6)
        render json: incidents
      end

      # GET /my_incidents/1
      def show
        render json: set_incident
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_incident
        @incident = current_user.incidents.find(params[:id])
      end
    end
  end
end
