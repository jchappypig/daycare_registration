class GmapService
  def self.daycaresToLocations(daycares)
    locations = []
    for daycare in daycares
      location = Location.new(daycare.latitude, daycare.longitude, daycare.name)
      locations << location
    end

    locations
  end
end
