class AddDefaultValuesToEvents < ActiveRecord::Migration
  def change
    change_column :events, :name, :string, :default => 'TBA'
    change_column :events, :location, :string, :default => 'TBA'
  end
end
