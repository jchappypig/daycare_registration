class DaycareCentre < ActiveRecord::Base
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
