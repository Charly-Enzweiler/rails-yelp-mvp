class Restaurant < ApplicationRecord
  # Constant
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  # PSEUDO CODE
  # Validate that there is a name of pet
  validates :name, :address, :category, presence: true, allow_blank: false
  # Validate that the pet is part of a certain species
  validates :category, inclusion: { in: CATEGORIES }
end
