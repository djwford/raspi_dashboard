class TempRecord < ActiveRecord::Base
  serialize :readings

  def self.monthly_extremes
    days = TempRecord.where(record_date: (Time.now.beginning_of_month.to_date)..(Time.now.end_of_month.to_date))
    monthly_highs = []
    monthly_lows = []
    days.each do |day|
      monthly_highs.push day.highest
      monthly_lows.push day.lowest
    end
    return [monthly_highs, monthly_lows]
  end

  def self.all_time
    days = TempRecord.all
    averages = []
    days.each do |day|
      averages.push day.average
    end
    return averages
  end

end
