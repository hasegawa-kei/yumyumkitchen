class CreateRecipeTagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_tag_relations do |t|
      t.integer :recipe_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
