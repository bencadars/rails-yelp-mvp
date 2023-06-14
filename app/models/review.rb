class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: { message: "must be provided" }
  validates :rating, presence: { message: "must be provided" }
  validates :rating, inclusion: { in: 0..5, message: "must be provided" }
  validates :rating, numericality: { only_integer: true }
end
