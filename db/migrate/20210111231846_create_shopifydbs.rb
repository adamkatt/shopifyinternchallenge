class CreateShopifydbs < ActiveRecord::Migration[6.1]
  def change
    create_table :shopifydbs do |t|
      t.string :treetype
      t.float :price
      t.string :location
      t.integer :inventory

      t.timestamps
    end
  end
end
