class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %W[chinese italian japanese belgian french]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
