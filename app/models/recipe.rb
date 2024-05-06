class Recipe < ApplicationRecord
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes
  accepts_nested_attributes_for :ingredients
  has_rich_text :instructions

  validates_presence_of :name, :calories

end
