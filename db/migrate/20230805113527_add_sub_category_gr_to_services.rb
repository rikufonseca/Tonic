class AddSubCategoryGrToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :sub_category_gr, :string
  end
end
