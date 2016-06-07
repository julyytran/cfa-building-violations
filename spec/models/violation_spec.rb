require 'rails_helper'

RSpec.describe Violation, type: :model do
  it { should validate_presence_of :violation_id }
  it { should validate_presence_of :inspection_id }
  it { should validate_presence_of :violation_category }
  it { should validate_presence_of :violation_date }
  it { should validate_presence_of :violation_type }
end
