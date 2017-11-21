class AddEventTypeToshifts < ActiveRecord::Migration
  def change
    add_column :shifts, :event_type, :integer
  end
end
