class StationFacade
  def self.search_station(location)
    data = StationService.closest_station(location)
    
    data[:fuel_stations].map do |s|
      Station.new(s)
    end
  end

  # def self.directions(location)
  #   json.GpsService.direction_to(location)
  #   json[:route].map do |r|
  #     binding.pry
  #     Gps.new(r)
  #   end
  # end
end