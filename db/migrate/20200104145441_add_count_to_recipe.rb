class AddCountToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :count, :integer
  end
end
