class AquariumComment < ApplicationRecord
  include Discard::Model

  belongs_to :user
  belongs_to :aquarium
end
