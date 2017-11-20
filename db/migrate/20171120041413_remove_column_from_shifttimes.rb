class RemoveColumnFromShifttimes < ActiveRecord::Migration
  def change
    remove_column :shifttimes, :start_end_time, :integer
  end
end
