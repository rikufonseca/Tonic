class JewelriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @jewelries = Jewelry.all
    @flowers = @jewelries.select { |jewelry| jewelry.theme_en == "Flowers" }
  end
end
