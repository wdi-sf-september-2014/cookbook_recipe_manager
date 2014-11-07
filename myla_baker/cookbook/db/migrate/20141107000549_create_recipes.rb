class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.integer :cooking_time
      t.integer :prep_time
      t.text :directions

      t.timestamps
    end
  end
end
