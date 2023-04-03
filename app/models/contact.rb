class Contact < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true

  validates :email, format: { with: /\A[a-zA-Z0-9_-]+\.?[a-zA-Z0-9]+@{1}[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)?\.[a-z]{2,}+\z/ }
end
