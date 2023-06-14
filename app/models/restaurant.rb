class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: { message: "must be provided" }
  validates :address, presence: { message: "must be provided" }
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
  validates :category, presence: { message: "must be provided" }
end
