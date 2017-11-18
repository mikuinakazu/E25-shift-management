class CreateShiftUsers < ActiveRecord::Migration
  def change
    create_table :shift_users do |t|
      t.references :shift, foreign_key: true
      t.references :user, foreign_key: true
      t.references :meeting, foreign_key: true
      t.timestamps
    end
  end
end
