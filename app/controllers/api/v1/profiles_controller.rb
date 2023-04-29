class Api::V1::ProfilesController < ApplicationController
  def show
    render json: current_user, status: :ok
  end
end
