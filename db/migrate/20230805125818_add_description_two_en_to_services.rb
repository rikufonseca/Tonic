class AddDescriptionTwoEnToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :description_en, :text
  end
end
