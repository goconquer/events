class Cause < ActiveRecord::Base
  attr_accessible :description, :name, :website

  has_and_belongs_to_many :events
end
