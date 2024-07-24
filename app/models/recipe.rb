class Recipe < ApplicationRecord
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes
  accepts_nested_attributes_for :ingredients
  has_rich_text :instructions

  validates_presence_of :name, :calories

  def add_ingredients(ingredients_params)
    return unless ingredients_params.present?
    ingredients_params.each do |ingredient|
      self.ingredients << Ingredient.find_or_create_by(name: ingredient)
    end
    self
  end

  def update_ingredients(ingredients_params)
    self.ingredients.clear
    add_ingredients(ingredients_params)
  end
end
