class CreateTempRecords < ActiveRecord::Migration
  def change
    create_table :temp_records do |t|
      t.text :readings
      t.integer :highest
      t.integer :lowest
      t.integer :average
      t.string :record_date
      t.timestamps
    end
  end
end
