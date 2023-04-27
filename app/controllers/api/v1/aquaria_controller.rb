class Api::V1::AquariaController < ApplicationController
  skip_before_action :authenticate

  def index
    aquaria = Aquarium.all
    render json: aquaria, status: :ok
  end
end
