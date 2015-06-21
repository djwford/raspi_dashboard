class HomeController < ApplicationController

  def home
    @reading = TempRecord.all
  end

end
