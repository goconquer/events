class AddDefaultValueToOrganization < ActiveRecord::Migration
	def up
		change_column :organizations, :is_main, :boolean, :default => false
	end

	def down
		change_column :organizations, :is_main, :boolean, :default => nil
	end
end
