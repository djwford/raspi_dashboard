class UtilityBill < ActiveRecord::Base

  # splits bills by category and returns a hash of data
  # to be used for the gas usage graph
  def self.usage(category)
    bills = UtilityBill.where("category" => category).order(month: :asc)
    output = []
    bills.each do |bill|
      output.push [bill.month, bill.daily_price]
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
