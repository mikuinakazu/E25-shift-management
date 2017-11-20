class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :start_end_time
      t.timestamps
      add_column :shifttimes, :end_time, :integer
      remove_column :shifttimes, :start_end_time, :integer
    end
  end
end
