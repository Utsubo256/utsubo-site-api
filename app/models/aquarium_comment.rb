class AquariumComment < ApplicationRecord
  include Discard::Model

  belongs_to :user
  belongs_to :aquarium
  default_scope -> { order(created_at: :desc) }
  validates :body, presence: true, length: { maximum: 255 }
end
