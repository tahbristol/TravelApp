class Trip < ApplicationRecord
  has_many :destinations, through: :user
  belongs_to :user
  accepts_nested_attributes_for :destinations

def destinations_attributes=(destinations_attributes)
	Raise destination_attributes.inspect
	Destination_attributes.each do |destination_attributes|
		self.destinations.build(destination_attributes)
	end
end
end 
