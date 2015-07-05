class DataController < ApplicationController
  def temperature_today
    respond_to do |format|
      format.json {
        today = Time.now.to_date.to_s
        record_today = TempRecord.where(:record_date => today)
        if record_today.any?
          @data = JSON::parse((record_today.readings))
        else
          @data = [0]
        end
      } 
    end   
  end
end
