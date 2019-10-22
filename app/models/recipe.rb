# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  picture    :string(255)
#

class Recipe < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :comments, dependent: :delete_all
  has_many :recipe_tag_relations, dependent: :delete_all
  has_many :tags, through: :recipe_tag_relations

  validates :title, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { maximum: 1000 }


end
