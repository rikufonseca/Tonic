class AddSubNameGrToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :sub_name_gr, :string
  end
end
