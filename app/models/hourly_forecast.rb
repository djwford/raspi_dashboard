class HourlyForecast < ActiveRecord::Base
  serialize :precip_probability
  serialize :temperature
  serialize :humidity
  serialize :wind_speed
  serialize :cloud_cover 
end
