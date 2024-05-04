class AddBelongToIngredients < ActiveRecord::Migration[7.0]
  def change
    change_table :ingredients do |t|
      t.belongs_to :recipe
    end
  end
end
