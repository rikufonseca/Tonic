class ServicesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    en_title = "Nails Menu"
    gr_title = "Μενού"

    set_meta_tags(
      title: request.original_url.include?("gr") ? en_title : gr_title,
      reverse: true,
      og: og_index_params
    )

    @services = Service.all
  end

  private

  def og_index_params
    en_desc = "Nails - Manucure and pedicure menu, for men & women"
    gr_desc = "xsdfghjgklyjreraz"

    en_title = "Tonic - Nails Menu"
    gr_title = ""

    {
      title: request.original_url.include?("gr") ? gr_title : en_title,
      type: "website",
      image: "https://www.tonic-society.com/assets/home_background-7176d7033963e50dc91ecc3c193c764a2afb3d0a2164caa6f6bf2037348ca2fc.png",
      description: request.original_url.include?("gr") ? gr_desc : en_desc,
      site_name: "Tonic - Nails & Jewelry",
      alternate: { "en" => "https://tonic-society.com/en/services", "gr" => "https://tonic-society.com/gr/services" }
    }
  end
end
