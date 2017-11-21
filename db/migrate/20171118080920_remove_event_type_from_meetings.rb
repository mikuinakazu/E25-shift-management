class RemoveEventTypeFromshifts < ActiveRecord::Migration
  def change
    remove_column :shifts, :event_type, :integer
  end
end
