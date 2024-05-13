class Shift < ApplicationRecord
  belongs_to :workplace_id
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :end_time_after_start_time

  private

  def end_time_after_start_time
    errors.add(:end_time, "must be after start time" if end_time <= start_time)
  end
end
