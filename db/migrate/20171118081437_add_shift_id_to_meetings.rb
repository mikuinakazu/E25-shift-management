class AddShiftIdToshifts < ActiveRecord::Migration
  def change
    add_column :shifts, :shift_id, :integer
  end
end
