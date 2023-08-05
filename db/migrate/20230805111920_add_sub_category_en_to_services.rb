class AddSubCategoryEnToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :sub_category_en, :string
  end
end
