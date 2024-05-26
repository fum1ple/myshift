class Income < ApplicationRecord
  validates :date, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
