class Service < ApplicationRecord
  has_one_attached :photo
  validates :title_gr, :title_en, :price, presence: true
  validates :title_en, :title_gr, uniqueness: true
end
