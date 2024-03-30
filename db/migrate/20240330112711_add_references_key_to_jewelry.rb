class AddReferencesKeyToJewelry < ActiveRecord::Migration[7.0]
  def change
    add_reference :jewelries, :artist, foreign_key: true
  end
end
