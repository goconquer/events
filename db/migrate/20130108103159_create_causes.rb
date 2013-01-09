class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :name
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
