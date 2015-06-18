class CreateTempRecords < ActiveRecord::Migration
  def change
    create_table :temp_records do |t|
      t.text :readings
      t.integer :highest
      t.integer :lowest
      t.integer :average
      t.datetime :record_date
      t.timestamps
    end
  end
end
