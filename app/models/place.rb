class Place < ActiveRecord::Base

	#equip model with Geocoder methods (e.g. retrive coordinates based on the provided address)
	geocoded_by :address
	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }


end
