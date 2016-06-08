require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :count }
  it { should validate_presence_of :earliest_violation_date }
  it { should validate_presence_of :latest_violation_date }
end
