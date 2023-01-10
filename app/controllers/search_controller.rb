class SearchController < ApplicationController 

  def index 
    @stations = StationFacade.search_station(params[:location]) 
    @final_destination = @stations.first.address

     @gps = GpsFacade.directions(params[:location], @final_destination)
  
  end
end