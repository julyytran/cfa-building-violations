class CategorySerializer < ActiveModel::Serializer
  attributes :name, :count, :latest_violation_month, :earliest_violation_month

  def earliest_violation_month
    self.object.earliest_violation_date.month.to_s
  end

  def latest_violation_month
    self.object.latest_violation_date.month.to_s
  end
end
