class CreateJewelries < ActiveRecord::Migration[7.0]
  def change
    create_table :jewelries do |t|
      t.string :name_gr
      t.string :name_en
      t.text :description_gr
      t.text :description_en
      t.integer :price
      t.string :theme_gr
      t.string :theme_en
      t.string :category_en
      t.string :category_gr

      t.timestamps
    end
  end
end
