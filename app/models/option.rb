class Option < ApplicationRecord
  validates :title_en, :title_gr, uniqueness: true
end
