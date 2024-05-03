class RenameRecipeCarbs < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :carbohydrates, :carbs
  end
end
