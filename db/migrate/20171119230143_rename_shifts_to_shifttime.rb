class RenameShiftsToShifttime < ActiveRecord::Migration
  def change
    rename_table :shifts, :shifttimes
    add_column :shifttimes, :end_time, :integer
    remove_column :shifttimes, :start_end_time, :integer
  end
end
