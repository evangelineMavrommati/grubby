class RenameRecipesIngredients < ActiveRecord::Migration[7.0]
  def change
    rename_table :recipes_ingredients, :ingredients_recipes
  end
end
