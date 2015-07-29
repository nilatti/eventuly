class AddEventIdToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :event_id, :integer
  end
end
