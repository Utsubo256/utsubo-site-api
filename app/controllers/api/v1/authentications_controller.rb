class Api::V1::AuthenticationsController < ApplicationController
  def create
    return unless current_user

    render json: current_user, serializer: UserSerializer, status: :created
  end
end
