class ChangeCategoriesInMessage < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :categories
    add_column :messages, :categories, :string, array: true, default: []
  end
end
