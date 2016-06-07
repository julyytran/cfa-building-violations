class Category < ActiveRecord::Base
  validates :name, presence: true
  validates :count, presence: true
end
