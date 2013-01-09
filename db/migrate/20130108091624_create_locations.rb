class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :cross_streets
      t.string :website

      t.timestamps
    end
  end
end
