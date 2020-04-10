class SearchController < ApplicationController
  def index
      conn = Faraday.new "https://developer.nrel.gov" do |conn|
        conn.params['api_key'] = ENV['DEVELOPER_API_KEY']
      end
      
      response = conn.get('api/alt-fuel-stations/v1/nearest.json') do |req|
        req.params['location'] = params[:location]
        req.params['fuel_type'] = 'ELEC'
      end
      @station = Station.new(JSON.parse(response.body, symbolize_names: true))
    # @station[:fuel_stations].first[:station_name]
    # @station[:fuel_stations].first[:steet_address]
    # @station[:fuel_stations].first[:city]
    # @station[:fuel_stations].first[:state]
    # @station[:fuel_stations].first[:zip]
  end
end
