class AddIngredientsToGroceryList < ActiveRecord::Migration[7.0]
  def change
    change_table :ingredients do |t|
      t.belongs_to :grocery_list
    end
  end
end
