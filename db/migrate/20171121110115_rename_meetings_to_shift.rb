class RenameshiftsToShift < ActiveRecord::Migration
  def change
    rename_table :shifts, :shifts
  end
end
