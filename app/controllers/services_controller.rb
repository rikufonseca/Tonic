class ServicesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    set_meta_tags(
      title: "Nails Menu",
      description: "All the nails sevices, manucure / pedicure for men and women",
      keywords: "tonic, luxury, nails, jewelry, kolonaki, athens, greece",
      reverse: true,
      og: og_params
    )
  end

  def show
  end
end
