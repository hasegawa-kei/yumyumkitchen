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

require 'test_helper'

class RecipeTagRelationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
