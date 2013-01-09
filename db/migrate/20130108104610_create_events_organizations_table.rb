class CreateEventsOrganizationsTable < ActiveRecord::Migration
	
 def up
  	create_table :events_organizations, :id => false do |t|
  		t.references :event
  		t.references :organization
  	end
  	add_index :events_organizations, [:event_id, :organization_id]
  end

  def down
  	drop_table :events_organizations
  end
end


