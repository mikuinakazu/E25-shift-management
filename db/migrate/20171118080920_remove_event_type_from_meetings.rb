class RemoveEventTypeFromMeetings < ActiveRecord::Migration
  def change
    remove_column :meetings, :event_type, :integer
  end
end
