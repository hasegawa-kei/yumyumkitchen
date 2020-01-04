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
#  user_id    :integer
#

class Recipe < ApplicationRecord
  mount_uploader :picture, PictureUploader

  has_many :comments, dependent: :delete_all
  has_many :recipe_tag_relations
  has_many :tags, through: :recipe_tag_relations
  has_many :likes, dependent: :destroy
  has_many :procedures, dependent: :destroy
  has_many :materials, dependent: :destroy

  accepts_nested_attributes_for :procedures, allow_destroy: true
  accepts_nested_attributes_for :materials, allow_destroy: true

  belongs_to :user

  validates :title, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :picture, presence: true
  validates :user_id, presence: true
  validates :materials, presence: true
  validates :procedures, presence: true


  def find_like(recipe, user)
    Like.find_by(recipe_id: recipe.id, user_id: user.id)
  end




end
