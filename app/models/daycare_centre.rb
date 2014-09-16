class DaycareCentre < ActiveRecord::Base
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
  after_validation :geocode, if: ->(daycareCentre){ daycareCentre.address.present? and daycareCentre.address_changed? }
end
