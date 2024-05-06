module RecipesHelper
  def create_recipe_with_ingredients(recipe_params, ingredients_params)
    recipe = Recipe.new(recipe_params)
    ingredients_params.each do |ingredient|
      recipe.ingredients << Ingredient.find_or_create_by(name: ingredient)
    end
    recipe
  end
end
