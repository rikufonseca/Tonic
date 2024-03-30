class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name_gr
      t.string :name_en
      t.text :description_gr
      t.text :description_en

      t.timestamps
    end
  end
end
