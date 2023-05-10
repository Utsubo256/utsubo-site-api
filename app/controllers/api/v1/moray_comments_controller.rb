class Api::V1::MorayCommentsController < ApplicationController
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
