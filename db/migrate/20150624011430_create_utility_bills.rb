class CreateUtilityBills < ActiveRecord::Migration
  def change
    create_table :utility_bills do |t|
      t.decimal :total_used
      t.decimal :unit_price
      t.integer :days_in_cycle
      t.decimal :daily_price
      t.string :category
      t.timestamps
    end
  end
end
