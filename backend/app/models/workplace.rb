class Workplace < ApplicationRecord
  has_many :shifts
  validates :name, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than: 0 }
  validates :transportation_fee, numericality: { greater_than: 0 }
end
