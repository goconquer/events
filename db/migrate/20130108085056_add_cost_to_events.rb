class AddCostToEvents < ActiveRecord::Migration
	change_table :events do |t|
		t.rename :door_cost, :cost_door
		t.string :cost_pre_order
	end
end
