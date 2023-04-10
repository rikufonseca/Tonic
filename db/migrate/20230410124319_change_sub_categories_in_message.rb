class ChangeSubCategoriesInMessage < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :sub_categories
    add_column :messages, :sub_categories, :string, array: true, default: []
  end
end
