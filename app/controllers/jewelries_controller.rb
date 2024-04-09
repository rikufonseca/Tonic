class JewelriesController < ApplicationController
  skip_before_action :authenticate_user!
   before_action :all, only: %i[index all_themes_all_cat]

  def index
     if params[:category]
      @jewelries = @jewelries.where(category_en: params[:category])
    elsif params[:theme]
      @jewelries = @jewelries.where(theme_en: params[:theme])
    end

    jewelries_giampouras = @jewelries.where(artist_id: Artist.find_by(name_en: "Vasilis Giampouras"))
    jewelries_kanale = @jewelries.where(artist_id: Artist.find_by(name_en: "Maria Kanala"))
    @fashionables = jewelries_giampouras.where(theme_en: "Fashionable")
    @flowers_giampouras = jewelries_giampouras.where( theme_en: "Flowers")
    @timeless = jewelries_giampouras.where(theme_en: "Timeless")
    @lava_stone = jewelries_kanale.where(theme_en: "Lava Stone")
    @faith = jewelries_kanale.where(theme_en: "Faith")
    @flowers_kanale = jewelries_kanale.where(theme_en: "Flowers")
    all_themes_all_cat
  end

  def all_themes_all_cat
    @themes_en = Jewelry.pluck(:theme_en).uniq
    @categories_en = Jewelry.pluck(:category_en).uniq
  end

  def all
    @jewelries = Jewelry.all
  end

  def show
    @jewelry = Jewelry.find(params[:id])
  end
end
