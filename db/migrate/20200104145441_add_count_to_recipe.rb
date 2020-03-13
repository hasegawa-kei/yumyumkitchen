# frozen_string_literal: true

class AddCountToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :count, :integer
  end
end
