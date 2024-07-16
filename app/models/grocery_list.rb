class GroceryList < ApplicationRecord
  has_many :ingredients
  # or has many ingredients: through: :ingredient_recipes / :recipes ??
end
