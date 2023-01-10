class GpsFacade
    def self.directions(start, final_destination )
    data = GpsService.direction_to(start, final_destination)
    binding.pry
    data[:route][:legs].map do |r|

      Gps.new(r)
    end
  end
end