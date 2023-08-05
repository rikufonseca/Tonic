class AddDescriptionTwoGrToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :description_gr, :text
  end
end
