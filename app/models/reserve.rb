class Reserve < ApplicationRecord
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :headcount, presence: true

  validate :start_end_check
  validate :date_before_start


  def start_end_check
    errors.add(:end_date) unless
    self.start_date < self.end_date
  end

  def date_before_start
    errors.add(:start_date) if start_date < Date.today
  end

  belongs_to :user
  belongs_to :subscribe
end
