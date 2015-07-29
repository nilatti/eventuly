class AddEventIdToAccommodations < ActiveRecord::Migration
  def change
    add_column :accommodations, :event_id, :integer

  end
end
