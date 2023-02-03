ActiveAdmin.register Service do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name_gr, :name_en, :description_gr, :description_en, :price, :category_en, :category_gr
  #
  # or
  #
  # permit_params do
  #   permitted = [:name_gr, :name_en, :description_gr, :description_en, :price, :category_en, :category_gr]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
