class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include RenderHelper

  def current_user
    current_api_v1_user
  end

  def authenticate_user!
    authenticate_api_v1_user!
  end
end
