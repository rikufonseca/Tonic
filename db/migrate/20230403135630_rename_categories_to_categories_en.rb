class RenameCategoriesToCategoriesEn < ActiveRecord::Migration[7.0]
  def change
    rename_column :messages, :categories, :categories_en
    add_column :messages, :categories_gr, :string
  end
end
