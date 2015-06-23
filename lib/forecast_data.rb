module ForecastData
  def self.hourly
    uri = "https://api.forecast.io/forecast/#{ENV["FORECAST_API"]}/40.7671768,111.8709666"
    response = HTTParty.get(uri)
    hourly = response['hourly']['data']
    precip_probability = []
    temperature = []
    humidity = []
    wind_speed = []
    cloud_cover = []
    hourly.each do |hour|
      precip_probability.push hour['precipProbability']
      temperature.push hour['temperature']
      humidity.push hour['humidity']
      wind_speed.push hour['windSpeed']
      cloud_cover.push hour['cloudCover']
    end
    return [precip_probability,temperature,humidity,wind_speed,cloud_cover]
  end
end