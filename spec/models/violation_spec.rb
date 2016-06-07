require 'rails_helper'

RSpec.describe Violation, type: :model do
  it { should validate_presence_of :violation_category }
  it { should validate_presence_of :violation_date }
  it { should validate_presence_of :violation_date_closed }
end
