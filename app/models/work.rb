class Work < ApplicationRecord
  mount_uploader :image, WorkImageUploader

  belongs_to :director
  has_many :work_tags, dependent: :destroy
  has_many :tags, through: :work_tags

  validates :title, presence: true
  validates :title, uniqueness: true
end
