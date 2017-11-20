class AddColumnToShifttimes < ActiveRecord::Migration
  def change
    add_column :shifttimes, :start_time, :integer
    add_column :shifttimes, :end_time, :integer
    remove_column :shifttimes, :start_end_time, :integer
  end
end
