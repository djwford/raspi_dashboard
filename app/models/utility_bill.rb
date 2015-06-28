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
    electric_output = []
    gas_output = []
    # multiplying by 10 to be comparable to gas
    electric_bills = UtilityBill.where("category" => "electric").order(month: :asc)
    electric_bills.each do |bill|
      electric_output.push [bill.month, (bill.unit_price)*100]
    end
    gas_bills = UtilityBill.where("category" => "gas").order(month: :asc)
    gas_bills.each do |bill|
      gas_output.push [bill.month, bill.unit_price]
    end
    return [gas_output, electric_output]
  end
end
