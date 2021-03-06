class WeatherController < ApplicationController
  def index
    all_weather = Weather.all
    render json: all_weather
  end

  def create
    whitelisted_params = permitted_params
    weather = Weather.new(whitelisted_params)
    weather.save!

    render json: {
      code: 201,
      body: weather
    }
  end

  def show
    weather_id = params['id']
    weather = Weather.find(weather_id)
    if weather.nil?
      weather = {
        code: 400,
        body: "No weather record found for this id #{weather_id}"
      }
    end
    render json: weather
  end

  private

  def permitted_params
    params.permit(:date, :lat, :lon, :city, :state, { :temperatures => []})
  end
end

