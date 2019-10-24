class WetlandSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :latitude, :longitude, :location, :extension
  attribute :image do
    object.image.present? ? object.image.url : ''
  end
end
