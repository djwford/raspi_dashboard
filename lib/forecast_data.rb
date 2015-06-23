module ForecastData
  def self.hourly
    puts 'getting hourly data!'
    uri = "https://api.forecast.io/forecast/#{ENV["FORECAST_API"]}/40.7671768,111.8709666"
    response = HTTParty.get(uri)
    hourly = response['hourly']['data']
    x = HourlyForecast.new
    x.precip_probability = []
    x.temperature = []
    x.humidity = []
    x.wind_speed = []
    x.cloud_cover = []
    hourly.each do |hour|
      x.precip_probability.push hour['precipProbability']
      x.temperature.push hour['temperature']
      x.humidity.push hour['humidity']
      x.wind_speed.push hour['windSpeed']
      x.cloud_cover.push hour['cloudCover']
    end
  x.save  
  end
end