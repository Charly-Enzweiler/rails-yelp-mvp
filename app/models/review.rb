class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: { in: (0..5) }
  validates :rating, :content, presence: true, allow_blank: false
  validates :rating, numericality: { only_integer: true }
end
