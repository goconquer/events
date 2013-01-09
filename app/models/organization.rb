class Organization < ActiveRecord::Base
  attr_accessible :is_main, :name

  has_and_belongs_to_many :events
end
