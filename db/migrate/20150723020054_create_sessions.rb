class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :instructor
      t.datetime :when
      t.integer :max_attendees

      t.timestamps null: false
    end
  end
end
