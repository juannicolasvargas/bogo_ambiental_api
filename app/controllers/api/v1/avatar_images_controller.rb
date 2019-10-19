module Api
  module V1
    class AvatarImagesController < ApplicationController
      before_action :authenticate_user!

      def create
        current_user.avatar_image = params[:avatar_image]
        if current_user.save!
          render json:  current_user.avatar_image.url
        end
      end
    end
  end
end
