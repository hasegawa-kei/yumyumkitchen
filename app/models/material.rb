class Material < ApplicationRecord
  belongs_to :recipe

  validates :recipe, presence: true
  validates :name, presence: true, length: { maximum: 30 }
  validates :quantity, presence: true, length: { maximum: 20 }
end
