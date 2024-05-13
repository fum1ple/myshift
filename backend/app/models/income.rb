class Income < ApplicationRecord
  validates :month, presence: true, inclusion: { in: 1, 12 }
  validates :year, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
  validates :goal_amount, numericality: { greater_than_or_equal_to: 0 }
end
