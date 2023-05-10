class MorayComment < ApplicationRecord
  belongs_to :user
  belongs_to :moray
  validates :body, presence: true, length: { maximum: 255 }
end
