class AddArrayInfo < ActiveRecord::Migration[6.1]
  def change
  	change_column :shopifydbs, :tags, :string
  end
end
