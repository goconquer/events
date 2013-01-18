class AddFieldsToEvents < ActiveRecord::Migration
  def change

	change_table :events do |t|
		t.datetime :doors_time
		t.string :min_age
	end

  end
end
