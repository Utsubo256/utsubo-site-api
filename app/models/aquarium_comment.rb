class AquariumComment < ApplicationRecord
  belongs_to :user
  belongs_to :aquarium
end
