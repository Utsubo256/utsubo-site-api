class Aquarium < ApplicationRecord
  include Discard::Model

  has_many :exhibitions
  has_many :morays, through: :exhibitions
end
