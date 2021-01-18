class AddUserIdToShopifydb < ActiveRecord::Migration[6.1]
  def change
    add_column :shopifydbs, :user_id, :integer
    add_index :shopifydbs, :user_id
  end
end
