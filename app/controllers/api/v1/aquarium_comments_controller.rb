class Api::V1::AquariumCommentsController < ApplicationController
  skip_before_action :authenticate, only: %i[index]

  def index
    aquarium = Aquarium.find(params[:aquarium_id])
    aquarium_comments = aquarium.aquarium_comments.kept
    render json: aquarium_comments, status: :ok
  end

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

  def destroy
    aquarium_comment = current_user.aquarium_comments.find(params[:id])
    aquarium_comment.discard
    render json: aquarium_comment
  end

  private

  def aquarium_comment_params
    params.require(:aquarium_comment).permit(:body)
  end
end
