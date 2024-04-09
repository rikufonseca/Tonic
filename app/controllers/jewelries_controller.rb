class JewelriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @jewelries = Jewelry.all
    jewelries_giampouras = @jewelries.where(artist_id: Artist.find_by(name_en: "Vasilis Giampouras"))
    jewelries_kanale = @jewelries.where(artist_id: Artist.find_by(name_en: "Maria Kanala"))
    @fashionables = jewelries_giampouras.where(theme_en: "Fashionable")
    @flowers_giampouras = jewelries_giampouras.where( theme_en: "Flowers")
    @timeless = jewelries_giampouras.where(theme_en: "Timeless")
    @lava_stone = jewelries_kanale.where(theme_en: "Lava Stone")
    @faith = jewelries_kanale.where(theme_en: "Faith")
    @flowers_kanale = jewelries_kanale.where(theme_en: "Flowers")

    @all_theme = []
    @all_category = []
    @jewelries.each do |jewelry|
      @all_theme << jewelry.theme_en
      @all_category << jewelry.category_en
    end
  end

  def show
    @jewelry = Jewelry.find(params[:id])
  end
end
