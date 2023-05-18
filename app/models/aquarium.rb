class Aquarium < ApplicationRecord
  include Discard::Model

  has_many :exhibitions
  has_many :morays, through: :exhibitions
  has_many :aquarium_comments, dependent: :destroy
  default_scope -> { order(:id) }
end
