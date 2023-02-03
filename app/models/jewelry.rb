class Jewelry < ApplicationRecord
  has_many_attached :photos
  validates :theme_gr, :theme_en, :name_gr, :name_en, :category_en, :category_gr, :description_gr, :description_en, :price, presence: true
end
