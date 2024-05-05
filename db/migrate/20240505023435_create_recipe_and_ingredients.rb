class CreateRecipeAndIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :meal
      t.integer :calories
      t.integer :protein
      t.integer :fat
      t.integer :carbs
      t.text :instructions

      t.timestamps
    end

    create_table :ingredients do |t|
      t.string :name      

      t.timestamps
    end

    create_table :recipes_ingredients, id: false do |t|
      t.belongs_to :recipe
      t.belongs_to :ingredient
    end
  end
end
