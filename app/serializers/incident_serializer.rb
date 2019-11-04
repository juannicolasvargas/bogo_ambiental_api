class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user_id
  attribute :image do
    object.image.present? ? object.image.url : ''
  end
end
