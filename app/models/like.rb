# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  recipe_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord

  validates :user_id, presence: true, uniqueness: {scope: :recipe_id}
  validates :recipe_id, presence: true

  belongs_to :recipe
  belongs_to :user

end
