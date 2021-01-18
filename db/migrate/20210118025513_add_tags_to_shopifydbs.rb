class AddTagsToShopifydbs < ActiveRecord::Migration[6.1]
  def change
    add_column :shopifydbs, :tags, :string
  end
end
