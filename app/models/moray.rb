class Moray < ApplicationRecord
  include Discard::Model

  has_many :exhibitions
  has_many :aquaria, through: :exhibitions
end
