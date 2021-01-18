class AddArrayTags < ActiveRecord::Migration[6.1]
  def change
  	add_column :shopifydbs, :tags, :text, array:true 
  end
end
