class Category < ActiveRecord::Base
  validates :name, presence: true
  validates :count, presence: true
  validates :earliest_violation_date, presence: true
  validates :latest_violation_date, presence: true
end
