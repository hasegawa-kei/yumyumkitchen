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
  has_many :liked_users, through: :likes, source: :user
  has_many :procedures, dependent: :destroy
  accepts_nested_attributes_for :procedures, reject_if: :all_blank, allow_destroy: true
  belongs_to :user

  validates :title, presence: true, length: { maximum: 20 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :user_id, presence: true





end
