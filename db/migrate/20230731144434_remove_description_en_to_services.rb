class RemoveDescriptionEnToServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :description_en, :text
  end
end
