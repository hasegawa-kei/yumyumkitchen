# frozen_string_literal: true

class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.integer :recipe_id
      t.string :image
      t.text :content

      t.timestamps
    end
  end
end
