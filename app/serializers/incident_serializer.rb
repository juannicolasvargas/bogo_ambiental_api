class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user_id
  attribute :created_at do
    object.created_at.to_date.to_s
  end
  attribute :image do
    object.image.present? ? object.image.url : ''
  end
end
