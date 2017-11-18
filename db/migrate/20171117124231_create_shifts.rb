class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :start_end_time
      t.timestamps
    end
  end
end
