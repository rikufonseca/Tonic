class JewelriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @jewelries = Jewelry.all
  end
end
