# frozen_string_literal: true

class RenameCountColumnToRecipes < ActiveRecord::Migration[5.2]
  def change
    rename_column :recipes, :count, :serving
  end
end
