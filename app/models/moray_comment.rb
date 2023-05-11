class MorayComment < ApplicationRecord
  include Discard::Model

  belongs_to :user
  belongs_to :moray
  default_scope -> { order(created_at: :desc) }
  validates :body, presence: true, length: { maximum: 255 }
end
