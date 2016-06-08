class CategorySerializer < ActiveModel::Serializer
  attributes :name, :count, :earliest_violation_date, :latest_violation_date
end
