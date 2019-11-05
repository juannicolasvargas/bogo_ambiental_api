module Api
  module V1
    class IncidentsController < ApplicationController
      before_action :set_incident, only: [:show, :update, :destroy]
      before_action :authenticate_user!

      # GET /incidents
      def index
        incidents = Incident.all.paginate(page: params[:page], per_page: 6).order_by_created_at
        render json: incidents
      end

      # GET /incidents/1
      def show
        render json: set_incident
      end

      # POST /incidents
      def create
        incident = current_user.incidents.new(incident_params)
        if incident.save
          render json: incident, status: :created
        else
          render json: incident.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /incidents/1
      def update
        incident = current_user.incidents.find(params[:id])
        if incident.update(incident_params)
          render json: incident
        else
          render json: incident.errors, status: :unprocessable_entity
        end
      end

      # DELETE /incidents/1
      def destroy
        incident = current_user.incidents.find(params[:id])
        incident.destroy
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_incident
        @incident = Incident.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def incident_params
        params.permit(:title, :description, :image, :page)
      end
    end
  end
end
