class Api::V1::ProfilesController < ApplicationController
  def show
    render json: current_user, status: :ok
  end

  def update
    if current_user.update(profile_params)
      render json: current_user, serializer: ProfileSerializer, status: :created
    else
      render json: { errors: current_user.errors.messages }, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:avatar, :name)
  end
end
