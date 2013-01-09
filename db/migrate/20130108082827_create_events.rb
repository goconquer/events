class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.string :emcees
      t.string :featured_guests
      t.string :door_cost
      t.string :attire
      t.text :description
      t.string :contact

      t.timestamps
    end
  end
end
