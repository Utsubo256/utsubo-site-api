class MorayCommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :image

  belongs_to :user
end
