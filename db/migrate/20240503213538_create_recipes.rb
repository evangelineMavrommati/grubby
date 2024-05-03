class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :calories
      t.integer :protein
      t.integer :fat
      t.integer :carbohydrates
      t.string :meal

      t.timestamps
    end
  end
end
