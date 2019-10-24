class Wetland < ApplicationRecord
  validates_presence_of :name, :description, :latitude, :longitude, :location, :extension
  validates :latitude, uniqueness: true
  validates :longitude, uniqueness: true
  validates :name, uniqueness: true

  mount_uploader :image, WetlandImageUploader
end
