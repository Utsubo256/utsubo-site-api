class AquariumDetailSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :address_detail, :description, :video_url, :site_url, :business_days_hours_url, :entrance_fee_url

  has_many :morays, through: :exhibitions
end
