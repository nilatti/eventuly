class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :name
      t.integer :max_males
      t.integer :max_females
      t.integer :max_neutral
      t.integer :nightly_cost
      t.integer :weekly_cost

      t.timestamps null: false
    end
  end
end
