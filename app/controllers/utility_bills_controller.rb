class UtilityBillsController < ApplicationController

  def index
    @utility_bill = UtilityBill.all
  end

  def new
    @utility_bill = UtilityBill.new
  end

  def create
    @utility_bill = UtilityBill.new(utility_bill_params)
    @utility_bill.daily_price = (@utility_bill.total_used * @utility_bill.unit_price) / @utility_bill.days_in_cycle
    @utility_bill.save
    redirect_to '/'
  end

  def edit
    @utility_bill = UtilityBill.find(params[:id])
  end

  def update
    @utility_bill = UtilityBill.find(params[:id])
    @utility_bill.update(utility_bill_params)
    redirect_to '/'    
  end

  private
  def utility_bill_params
    params.require(:utility_bill).permit(:total_used, :month, :unit_price, :days_in_cycle, :category)
  end



end
