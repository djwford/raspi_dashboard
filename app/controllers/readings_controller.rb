class ReadingsController < ApplicationController
skip_before_filter  :verify_authenticity_token

def index
  @readings = Reading.all
end

def new
  respond_to do |format|
    format.json {
      @reading = Reading.new(reading_params)
      @reading.save
      head :ok, content_type: "text/html"
    }
  end
end

private
def reading_params
  params.require(:reading).permit(:temp, :read_time)
end

end
