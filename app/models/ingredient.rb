class Ingredient < ApplicationRecord
  has_many :recipes, through: :ingredient_recipes
  has_many :ingredient_recipes

  validates :name, presence: true, uniqueness: true
end
