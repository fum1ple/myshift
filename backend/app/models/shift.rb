class Shift < ApplicationRecord
  belongs_to :workplace
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :end_time_after_start_time

  private

  def end_time_after_start_time
    if end_time <= start_time
      errors.add(:end_time, "終了時間が開始時間よりも前に設定されています")
    end
  end
end
