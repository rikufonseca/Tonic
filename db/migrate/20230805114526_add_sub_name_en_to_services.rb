class AddSubNameEnToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :sub_name_en, :string
  end
end
