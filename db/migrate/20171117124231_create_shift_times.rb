class CreateShiftTimes < ActiveRecord::Migration
  def change
    create_table :shift_times do |t|
      t.string :start_time
      t.string :end_time
      t.timestamps null: false
    end
  end
end
