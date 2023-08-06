class UpdateServices < ActiveRecord::Migration[7.0]
  def change
    # supprimer les colonnes qui deviendront des tables
    remove_column :services, :category_en
    remove_column :services, :category_gr
    remove_column :services, :sub_category_en
    remove_column :services, :sub_category_gr

    # mofifier les colonnes
    rename_column :services, :name_gr, :title_gr
    rename_column :services, :name_en, :title_en
    rename_column :services, :sub_name_en, :sub_title_en
    rename_column :services, :sub_name_gr, :sub_title_gr
    change_column :services, :price, :integer
    add_column :services, :genre_en, :string
    add_column :services, :genre_gr, :string

    # creation des tables
    create_table :service_categories do |t|
      t.string :title_en
      t.string :title_gr
    end

    create_table :service_sub_categories do |t|
      t.string :title_en
      t.string :title_gr
    end

    create_table :options do |t|
      t.references :service_sub_category, foreign_key: true
      t.string :title_en
      t.string :title_gr
      t.string :description_en
      t.string :description_gr
      t.integer :price
    end

    create_table :service_options do |t|
      t.references :option, foreign_key: true
      t.references :service, foreign_key: true
    end

    # ajout des foreign keys
    add_reference :services, :service_category, index: true
    add_reference :services, :service_sub_category, index: true
  end
end
