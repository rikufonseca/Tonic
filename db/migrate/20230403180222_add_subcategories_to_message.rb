class AddSubcategoriesToMessage < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :sub_categories, :string
  end
end
