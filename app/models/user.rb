class User < ApplicationRecord
  def self.find_or_create_user(user_info)
    uid = user_info[:uid]
    user = User.find_by(uid:)
    return user if user

    User.create!(uid:, name: "User_#{uid[0, 4]}")
  end
end
