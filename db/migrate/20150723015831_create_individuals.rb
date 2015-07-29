class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.integer :family_id

      t.timestamps null: false
    end
  end
end
