require 'rails_helper'

describe GmapService do
  describe 'daycaresToLocations' do
    it 'should return a list of daycare locations' do
      daycare1 = DaycareCentre.new(name: 'daycare1', latitude: 0, longitude: 0)
      daycare2 = DaycareCentre.new(name: 'daycare2', latitude: 1, longitude: 1)
      locations = GmapService.daycaresToLocations([daycare1, daycare2])

      expect(locations.to_json).to eq("[{\"lat\":0.0,\"lng\":0.0,\"infowindow\":\"daycare1\"},{\"lat\":1.0,\"lng\":1.0,\"infowindow\":\"daycare2\"}]")
    end
  end
end
