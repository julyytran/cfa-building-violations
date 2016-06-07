class Violation < ActiveRecord::Base
  validates :violation_id, presence: true
  validates :inspection_id, presence: true
  validates :violation_category, presence: true
  validates :violation_date, presence: true
  validates :violation_date_closed, presence: true
  validates :violation_type, presence: true
end
