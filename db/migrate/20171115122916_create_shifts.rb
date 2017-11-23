class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :name
      t.datetime :start_time
      t.integer :user_id
      t.integer :shift_time_id
      t.timestamps null: false
    end
  end
end
