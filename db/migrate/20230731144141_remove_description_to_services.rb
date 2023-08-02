class RemoveDescriptionToServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :description_gr, :text
  end
end
