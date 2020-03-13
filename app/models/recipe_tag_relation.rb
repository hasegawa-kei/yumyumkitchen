# frozen_string_literal: true

# == Schema Information
#
# Table name: recipe_tag_relations
#
#  id         :integer          not null, primary key
#  recipe_id  :integer
#  tag_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RecipeTagRelation < ApplicationRecord
  belongs_to :recipe
  belongs_to :tag
end
