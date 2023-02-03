class Product < ApplicationRecord
  has_one_attached :photo
  validates :name_gr, :name_en, :description_gr, :description_en, :price, presence: true
end
