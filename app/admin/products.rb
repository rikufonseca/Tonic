ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name_gr, :name_en, :description_gr, :description_en, :price, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:name_gr, :name_en, :description_gr, :description_en, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs "Product" do
      f.input :name_gr
      f.input :name_en
      f.input :description_gr
      f.input :description_en
      f.input :price
      f.inputs "Ajouter une photo" do
        f.input :photo, as: :file
      end
    end
    f.actions
  end
end
