class CreateCategories < ActiveRecord::Migration
  def change
    enable_extension 'citext'

    create_table :categories do |t|
      t.integer :count
      t.citext :name
      t.datetime :earliest_violation_date
      t.datetime :latest_violation_date

      t.timestamps null: false
    end
  end
end
