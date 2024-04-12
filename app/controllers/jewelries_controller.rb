class JewelriesController < ApplicationController
  skip_before_action :authenticate_user!
   before_action :all, only: %i[index all_themes_all_cat_en all_themes_all_cat_gr]
   before_action :set_locale

  def index
     if params[:locale] == "en" || params[:locale].nil?
      if params[:category]
        @jewelries = @jewelries.where(category_en: params[:category])
      elsif params[:theme]
        @jewelries = @jewelries.where(theme_en: params[:theme])
      end
    else
      if params[:category]
        @jewelries = @jewelries.where(category_gr: params[:category])
      elsif params[:theme]
        @jewelries = @jewelries.where(theme_gr: params[:theme])
      end
    end

    jewelries_giampouras = @jewelries.where(artist_id: Artist.find_by(name_en: "Vasilis Giampouras"))
    jewelries_kanale = @jewelries.where(artist_id: Artist.find_by(name_en: "Maria Kanala"))
    @fashionables = jewelries_giampouras.where(theme_en: "Fashionable")
    @flowers_giampouras = jewelries_giampouras.where( theme_en: "Flowers")
    @timeless = jewelries_giampouras.where(theme_en: "Timeless")
    @lava_stone = jewelries_kanale.where(theme_en: "Lava Stone")
    @faith = jewelries_kanale.where(theme_en: "Faith")
    @flowers_kanale = jewelries_kanale.where(theme_en: "Flowers")

    if params[:locale] == "en" || params[:locale].nil?
      all_themes_all_cat_en
    else
      all_themes_all_cat_gr
    end
  end

  def all_themes_all_cat_en
    @themes_en = Jewelry.pluck(:theme_en).uniq
    @categories_en = Jewelry.pluck(:category_en).uniq
  end

  def all_themes_all_cat_gr
    @themes_gr = Jewelry.pluck(:theme_gr).uniq
    @categories_gr = Jewelry.pluck(:category_gr).uniq
  end

  def all
    @jewelries = Jewelry.all
  end

  def show
    @jewelry = Jewelry.find(params[:id])
  end
end
