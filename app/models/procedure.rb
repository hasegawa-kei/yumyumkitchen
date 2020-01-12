class Procedure < ApplicationRecord

  mount_uploader :image, PictureUploader

  belongs_to :recipe
  validates :recipe, presence: true
  #validates :image, presence: true
  validates :content, presence: true, length: { maximum: 200 }
end
