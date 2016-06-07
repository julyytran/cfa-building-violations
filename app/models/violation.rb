class Violation < ActiveRecord::Base
  validates :violation_category, presence: true
  validates :violation_date, presence: true
  validates :violation_date_closed, presence: true
end
