class ViolationSerializer < ActiveModel::Serializer
  attributes :violation_id, :inspection_id, :violation_category, :violation_date, :violation_date_closed, :violation_type
end
