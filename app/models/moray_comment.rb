class MorayComment < ApplicationRecord
  belongs_to :user
  belongs_to :moray
end
