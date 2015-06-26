class CreateUtilityBills < ActiveRecord::Migration
  def change
    create_table :utility_bills do |t|
      t.float :total_used
      t.integer :month
      t.float :unit_price
      t.integer :days_in_cycle
      t.float :daily_price
      t.string :category
      t.timestamps
    end
  end
end
