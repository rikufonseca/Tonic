ActiveAdmin.register Service do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name_gr, :name_en, :description_gr, :description_en, :price, :category_en, :category_gr, :time, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:name_gr, :name_en, :description_gr, :description_en, :price, :category_en, :category_gr]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs "Jewelry" do
      f.input :name_gr
      f.input :name_en
      f.input :description_gr
      f.input :description_en
      f.input :category_gr
      f.input :category_en
      f.input :price
      f.input :time
      f.inputs "Ajouter une photo" do
        f.input :photo, as: :file
      end
    end
    f.actions
  end

end
