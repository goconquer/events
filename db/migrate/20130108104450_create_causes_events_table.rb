class CreateCausesEventsTable < ActiveRecord::Migration

 def up
  	create_table :causes_events, :id => false do |t|
  		t.references :cause
  		t.references :event
  	end
  	add_index :causes_events, [:cause_id, :event_id]
  end

  def down
  	drop_table :causes_events
  end
end

