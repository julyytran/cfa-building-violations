class CreateViolations < ActiveRecord::Migration
  def change
    enable_extension 'citext'

    create_table :violations do |t|
      t.string :violation_id
      t.string :inspection_id
      t.citext :violation_category
      t.string :violation_date
      t.string :violation_date_closed
      t.citext :violation_type

      t.timestamps null: false
    end
  end
end
