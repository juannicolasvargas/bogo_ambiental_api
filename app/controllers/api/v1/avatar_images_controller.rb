module Api
  module V1
    class AvatarImagesController < ApplicationController
      before_action :authenticate_user!

      def create
        current_user.avatar_image = avatar_image_user
        avatar_image_user.close
        if current_user.save!
          render_success(current_user)
        end
      end

      private

      def avatar_image_user
        @avatar_image_user ||= begin
          image_data = Base64.decode64(params[:avatar_image])
          temp_file = Tempfile.new([current_user.name,'.jpg'])
          temp_file.binmode
          temp_file.write(image_data)
          temp_file
        end
      end

    end
  end
end
