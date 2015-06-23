class CreateHourlyForecasts < ActiveRecord::Migration
  def change
    create_table :hourly_forecasts do |t|
      t.text :precip_probability
      t.text :temperature
      t.text :humidity
      t.text :wind_speed
      t.text :cloud_cover 
      t.timestamps
    end
  end
end
