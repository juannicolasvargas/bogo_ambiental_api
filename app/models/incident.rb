class Incident < ApplicationRecord
  belongs_to :user
  mount_uploader :image, IncidentImageUploader
  validates_presence_of :title, :description, :image
  validates :title, uniqueness: true
end
