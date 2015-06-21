class TempRecordsController < ApplicationController
  
  skip_before_filter  :verify_authenticity_token
  
  def new
    respond_to do |format|
      format.json {
        @tempRecord = TempRecord.new(temp_record_params)
        if TempRecord.any?
          # check if the record is for the day after the last record's record_date
          if @tempRecord.record_date.to_date.day >= ((TempRecord.last.record_date.to_date + 1.day).day)
            # create a new record
            puts "record_date"
            puts @tempRecord.record_date
            puts "last record_date"
            puts TempRecord.last.record_date
            # @tempRecord.readings = [temp_record_params.readings.to_i].to_json
            @tempRecord.save
          else
            update_temp_record(temp_record_params)
          end
        else
          @tempRecord.save
        end
        head :ok, content_type: "text/html"
      }
    end
  end

  private
    def update_temp_record(params)
      # you want to make sure it's the same DAY, but not exactly the same TIME object
      current_record = TempRecord.where(:record_date => params[:record_date]).first
      current_record.readings = (JSON::parse(current_record.readings) + (JSON::parse(params[:readings]))).to_json
      current_record.highest = JSON::parse(current_record.readings).max
      current_record.lowest = JSON::parse(current_record.readings).min
      current_record.average = JSON::parse(current_record.readings).reduce(:+).to_f / JSON::parse(current_record.readings).size.to_f
      current_record.save
    end

    def temp_record_params
      params.require(:temp_record).permit(:readings, :record_date)
    end
end
