class Recipe < ApplicationRecord
  has_and_belongs_to_many :ingredients
  accepts_nested_attributes_for :ingredients
  has_rich_text :instructions
end
