class AddPictureToJewelries < ActiveRecord::Migration[7.0]
  def change
    add_column :jewelries, :picture, :string
  end
end
