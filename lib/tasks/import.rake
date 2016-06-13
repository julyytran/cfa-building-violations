require 'csv'

namespace :import do

  desc 'Imports data from csv'
  task data: :environment do

    violations = './vendor/assets/data/violations-2012.csv'

    CSV.foreach(violations, headers: true, header_converters: :symbol) do |row|
      violation = Violation.create(row.to_h)
      if violation.save
        puts "Created Violation"
      else
        puts "Invalid record"
      end
    end

    categories = Violation.pluck(:violation_category).uniq

    categories.each do |category|
      category_violations = Violation.where(violation_category: category)

      category = Category.create(
        name: category,
        count: category_violations.count,
        earliest_violation_date: DateTime.parse(category_violations.order(:violation_date).first.violation_date),
        latest_violation_date: DateTime.parse(category_violations.order(:violation_date).last.violation_date)
      )

      if category.save
        puts "Created Category"
      else
        puts "Invalid record"
      end
    end
  end
end
