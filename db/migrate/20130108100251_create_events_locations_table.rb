class CreateEventsLocationsTable < ActiveRecord::Migration
  def up
  	create_table :events_locations, :id => false do |t|
  		t.references :event
  		t.references :location
  	end
  	add_index :events_locations, [:event_id, :location_id]
  end

  def down
  	drop_table :events_locations
  end
end
