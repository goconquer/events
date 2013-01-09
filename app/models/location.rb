class Location < ActiveRecord::Base
  attr_accessible :city, :cross_streets, :name, :state, :street_address, :website, :zip

  has_and_belongs_to_many :events


  def address
  	"#{street_address} #{city}, #{state} #{zip}"
  end
end
