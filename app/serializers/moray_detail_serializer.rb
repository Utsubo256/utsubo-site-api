class MorayDetailSerializer < ActiveModel::Serializer
  attributes :id, :avatar, :name_ja, :name_en, :name_academic, :max_length_str, :distribution, :description, :video_url
end
