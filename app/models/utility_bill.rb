class UtilityBill < ActiveRecord::Base

  # splits bills by category and returns a hash of data
  # to be used for the gas usage graph
  def self.gas_usage
    gas_bills = UtilityBill.where("category" => "gas").order(month: :asc)
    output = []
    gas_bills.each do |bill|
      output.push bill.daily_price
    end
    return output
  end

  def self.electric_usage
    electric_bills = UtilityBill.where("category" => "electric").order(month: :asc)
    output = []
    electric_bills.each_with_index do |bill|
      output.push bill.daily_price
    end
    return output
  end

  def self.prices
    electric_bills = UtilityBill.where("category" => "electric").order(month: :asc)
    electric_output = []
    electric_bills.each do |bill|
      electric_output.push bill.unit_price
    end
    gas_bills = UtilityBill.where("category" => "gas").order(month: :asc)
    gas_output = []
    gas_bills.each do |bill|
      gas_output.push bill.unit_price
    end
    return [electric_output, gas_output]
  end
end
