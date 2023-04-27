class AquariumSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :address_city
end
