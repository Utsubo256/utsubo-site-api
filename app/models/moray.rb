class Moray < ApplicationRecord
  include Discard::Model

  has_many :exhibitions, dependent: :destroy
  has_many :aquaria, through: :exhibitions
  has_many :moray_comments, dependent: :destroy
  default_scope -> { order(:name_ja) }
end
