class Procedure < ApplicationRecord
  mount_uploader :image, PictureUploader

  belongs_to :recipe
end
