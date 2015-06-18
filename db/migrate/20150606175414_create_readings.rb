class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.datetime :read_time
      t.decimal :temp
      t.timestamps
    end
  end
end
