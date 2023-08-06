class ServiceSubCategory < ApplicationRecord
  validates :title_en, :title_gr, uniqueness: true
end
