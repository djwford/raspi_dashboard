class CreateMigrations < ActiveRecord::Migration
  def change
    create_table :migrations do |t|
      t.string :add_readings

      t.timestamps
    end
  end
end
