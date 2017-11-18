class AddEventTypeToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :event_type, :integer
  end
end
