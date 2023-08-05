class Service < ApplicationRecord
  has_one_attached :photo
  validates :sub_name_gr, :sub_name_en, :category_en, :category_gr, :price, presence: true
end
