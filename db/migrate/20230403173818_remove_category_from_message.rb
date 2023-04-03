class RemoveCategoryFromMessage < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :categories_gr
    rename_column :messages, :categories_en, :categories
  end
end
