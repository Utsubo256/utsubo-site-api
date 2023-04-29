class AquariumSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :address_city, :region
end
