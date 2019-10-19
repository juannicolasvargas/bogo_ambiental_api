class UserSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :email
  attributes :last_name
  attribute :image do
    object.avatar_image.present? ? object.avatar_image.url : ''
  end
end
