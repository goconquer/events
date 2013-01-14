class ModifyIdeasTable < ActiveRecord::Migration
  def up
  	change_column :events, :cost_pre_order, :integer, :default => 0
  	change_column :events, :cost_door, :integer, :default => 0

  end

  def down
  	change_column :events, :cost_pre_order, :string
  	change_column :events, :cost_door, :string
  end
end
