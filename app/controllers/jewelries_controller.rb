class JewelriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @jewelries = Jewelry.all
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

    @themes_en = Jewelry.pluck(:theme_en).uniq
    @categories_en = Jewelry.pluck(:category_en).uniq
  end

  def show
    @jewelry = Jewelry.find(params[:id])
  end
end
