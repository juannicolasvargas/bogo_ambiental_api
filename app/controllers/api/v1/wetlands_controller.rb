module Api
  module V1
    class WetlandsController < ApplicationController
      before_action :set_wetland, only: [:show, :update, :destroy]
      before_action :authenticate_user!, only: %i[index show]

      # GET /wetlands
      def index
        @wetlands = Wetland.all

        render json: @wetlands
      end

      # GET /wetlands/1
      def show
        render json: @wetland
      end

      # POST /wetlands
      def create
        @wetland = Wetland.new(wetland_params)
        if @wetland.save
          render json: @wetland, status: :created
        else
          render json: @wetland.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /wetlands/1
      def update
        if @wetland.update(wetland_params)
          render json: @wetland
        else
          render json: @wetland.errors, status: :unprocessable_entity
        end
      end

      # DELETE /wetlands/1
      def destroy
        @wetland.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_wetland
          @wetland = Wetland.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def wetland_params
          params.permit(:name, :description, :image, :latitude, :longitude, :location, :extension)
        end
    end
  end
end
