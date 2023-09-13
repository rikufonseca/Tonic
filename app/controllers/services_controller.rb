class ServicesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    en_title = "Nails Menu"
    gr_title = "Μενού"

    set_meta_tags(
      title: request.original_url.include?("gr") ? en_title : gr_title,
      reverse: true,
      og: og_index_params,
      canonical: "https://tonic-society.com/services"
    )

    categories = {
      manicure: { en: "MANICURES", gr: "ΜΑΝΙΚΙΟΥΡ" },
      pedicure: { en: "PEDICURES", gr: "ΠΕΝΤΙΚΙΟΥΡ" },
      men: { en: "MEN", gr: "ΑΝΔΡΕΣ" },
      art: { en: "NAILS ART", gr: "NAILS ART" },
      extra: { en: "EXTRA", gr: "ΕΞΤΡΑ" }
    }

    @services = {}

    categories.each do |category, translations|
      translations.each do |lang, translation|
        key = "services_#{category}_#{lang}".to_sym
        @services[key] = Service.where("category_#{lang}": translation).group("id, name_#{lang}").select("id, name_#{lang}, sub_name_#{lang}, description_#{lang}, price")
      end
    end
  end

  private

  def og_index_params
    en_desc = "Nails - Manucure and pedicure menu, for men & women"
    gr_desc = "Νύχια - Μενού Μανικιούρ και πεντικιούρ, για άνδρες & γυναίκες"

    en_title = "Tonic - Nails Menu"
    gr_title = "Tonic - Νύχια Μενού"

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
