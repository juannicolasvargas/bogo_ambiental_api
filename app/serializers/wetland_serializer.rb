class WetlandSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :latitude, :longitude
end
