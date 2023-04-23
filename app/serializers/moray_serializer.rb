class MoraySerializer < ActiveModel::Serializer
  attributes :id, :avatar, :name_ja, :name_en, :max_length, :max_length_str
end
