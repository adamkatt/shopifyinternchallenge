class AddSubjectsToBook < ActiveRecord::Migration[6.1]
  def change
    remove_column :shopifydbs, :tags
  end
end
