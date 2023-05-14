class Api::V1::AquariumCommentsController < ApplicationController
  def create
    aquarium = Aquarium.find(params[:aquarium_id])
    aquarium_comment = current_user.aquarium_comments.build(aquarium_comment_params)
    aquarium_comment.aquarium_id = aquarium.id
    if aquarium_comment.save
      render json: aquarium_comment, status: :created
    else
      render json: { errors: aquarium_comment.errors.messages }
    end
  end

  private

  def aquarium_comment_params
    params.require(:aquarium_comment).permit(:body)
  end
end
