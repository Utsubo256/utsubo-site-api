class MorayCommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :image, :created_at

  belongs_to :user
end
