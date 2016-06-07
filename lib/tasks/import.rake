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
  end
end
