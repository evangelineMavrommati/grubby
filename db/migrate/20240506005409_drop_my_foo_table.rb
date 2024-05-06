class DropMyFooTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :my_foos
  end
end
