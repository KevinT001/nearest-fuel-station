class GpsService

  def self.direction_to(start, final_destination)

    response = conn.get("/directions/v2/route?from=#{start}&to=#{final_destination}")

    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://www.mapquestapi.com") do |f|
      f.params['key'] = ENV['map_api_key']

    end
  end
end