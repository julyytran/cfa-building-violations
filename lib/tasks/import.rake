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
      category = Category.create(name: category, count: Violation.where(violation_category: category).count)
      if category.save
        puts "Created Category"
      else
        puts "Invalid record"
      end
    end
  end
end
