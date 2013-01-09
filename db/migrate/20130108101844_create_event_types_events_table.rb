class CreateEventTypesEventsTable < ActiveRecord::Migration

  def up
  	create_table :event_types_events, :id => false do |t|
  		t.references :event_type
  		t.references :event
  	end
  	add_index :event_types_events, [:event_type_id, :event_id]
  end

  def down
  	drop_table :event_types_events
  end
end
