class Event < ActiveRecord::Base
	attr_accessible :attire, :contact, :description, :emcees, :end_time, 
  					:featured_guests, :name, :start_time, :cost_door, :cost_pre_order,
            :organization_ids, :cause_ids, :event_type_ids, :location_ids, 
            :locations_attributes, :organizations_attributes, :causes_attributes, 
            :event_types_attributes

  	has_and_belongs_to_many :locations
  	has_and_belongs_to_many :event_types
  	has_and_belongs_to_many :causes
  	has_and_belongs_to_many :organizations

    accepts_nested_attributes_for :causes, :event_types
    accepts_nested_attributes_for :locations, :organizations, :allow_destroy => true

  	def duration
  		
  		end_time - start_time

  	end




end
