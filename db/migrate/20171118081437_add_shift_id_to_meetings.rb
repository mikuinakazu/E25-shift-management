class AddShiftIdToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :shift_id, :integer
  end
end
