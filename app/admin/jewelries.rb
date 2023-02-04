ActiveAdmin.register Jewelry do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name_gr, :name_en, :description_gr, :description_en, :price, :theme_gr, :theme_en, :category_en, :category_gr, photos: []
  #
  # or
  form do |f|
    f.inputs "Jewelry" do
      f.input :name_gr
      f.input :name_en
      f.input :description_gr
      f.input :description_en
      f.input :theme_gr
      f.input :theme_en
      f.input :category_gr
      f.input :category_en
      f.input :price
      f.inputs "Ajouter des photos" do
        f.input :photos, as: :file, input_html: { multiple: true }
      end
    end
    f.actions
  end

  # permit_params do
  #   permitted = [:name_gr, :name_en, :description_gr, :description_en, :price, :theme_gr, :theme_en, :category_en, :category_gr]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
