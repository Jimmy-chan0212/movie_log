class Work < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  belongs_to :director
  mount_uploader :image, WorkImageUploader
end
