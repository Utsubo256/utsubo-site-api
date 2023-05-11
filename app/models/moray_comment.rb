class MorayComment < ApplicationRecord
  include Discard::Model

  belongs_to :user
  belongs_to :moray
  validates :body, presence: true, length: { maximum: 255 }
end
