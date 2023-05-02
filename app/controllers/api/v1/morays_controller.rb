class Api::V1::MoraysController < ApplicationController
  skip_before_action :authenticate

  def index
    morays = Moray.all
    render json: morays, status: :ok
  end

  def show
    moray = Moray.find(params[:id])
    render json: moray, serializer: MorayDetailSerializer, status: :ok
  end
end
