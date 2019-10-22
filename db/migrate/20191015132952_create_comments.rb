class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :recipe_id, foreign_key: true
      t.string :name, null: false
      t.text :comment, null: false

      t.timestamps
    end
    add_index :comments, :recipe_id
  end
end
