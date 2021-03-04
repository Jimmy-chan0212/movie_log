class Director < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :country, presence: true
  has_many :works
  mount_uploader :image, DirectorImageUploader
end
