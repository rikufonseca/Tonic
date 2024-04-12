class Jewelry < ApplicationRecord
  belongs_to :artist
  validates :theme_gr, :theme_en, :name_gr, :name_en, :category_en, :category_gr, :description_gr, :description_en, :price, presence: true

  def to_param
    name_en.parameterize
  end
end
