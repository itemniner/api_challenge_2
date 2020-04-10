class Station
  attr_reader :name, 
              :address,
              :city,
              :state,
              :zip

  def initialize(data)
    @name = data[:fuel_stations].first[:station_name]
    @address = data[:fuel_stations].first[:steet_address]
    @city = data[:fuel_stations].first[:city]
    @state = data[:fuel_stations].first[:state]
    @zip = data[:fuel_stations].first[:zip]
  end
end