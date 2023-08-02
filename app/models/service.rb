class Service < ApplicationRecord
  has_one_attached :photo
  validates :name_gr, :name_en, :category_en, :category_gr, :price, presence: true
end
