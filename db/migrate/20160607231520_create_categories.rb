class CreateCategories < ActiveRecord::Migration
  def change
    enable_extension 'citext'

    create_table :categories do |t|
      t.integer :count
      t.citext :name

      t.timestamps null: false
    end
  end
end
