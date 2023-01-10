class Station
  attr_reader :name, :address, :fuel_type, :hours
  def initialize(data)
    @name = data[:station_name][0].to_s
    @address = data[:street_address] + " " + data[:city] + " " + data[:state] + " " + data[:zip]  
    @fuel_type = data[:fuel_type_code]
    @hours = data[:access_days_time]

  end
end