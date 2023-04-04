class RemoveCategoryFromContact < ActiveRecord::Migration[7.0]
  def change
    remove_column :contacts, :category_en
    remove_column :contacts, :category_gr
  end
end
