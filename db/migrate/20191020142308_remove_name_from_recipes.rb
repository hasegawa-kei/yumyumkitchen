# frozen_string_literal: true

class RemoveNameFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :name, :string
  end
end
