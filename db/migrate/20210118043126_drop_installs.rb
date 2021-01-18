class DropInstalls < ActiveRecord::Migration[6.1]
  def change
  	remove_column :shopifydbs, :inventory
  	remove_column :shopifydbs, :price
  	drop_table :shopifies
  end
end
