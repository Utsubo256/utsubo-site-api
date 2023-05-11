class Api::V1::MorayCommentsController < ApplicationController
  skip_before_action :authenticate, only: %i[index]

  def index
    moray = Moray.find(params[:moray_id])
    moray_comments = moray.moray_comments
    render json: moray_comments, status: :ok
  end

  def create
    moray = Moray.find(params[:moray_id])
    moray_comment = current_user.moray_comments.build(moray_comment_params)
    moray_comment.moray_id = moray.id
    if moray_comment.save
      render json: moray_comment, status: :created
    else
      render json: { errors: moray_comment.errors.messages }
    end
  end

  def moray_comment_params
    params.require(:moray_comment).permit(:body)
  end
end
