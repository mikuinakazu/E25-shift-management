class RemoveNameFromshifts < ActiveRecord::Migration
  def change
    remove_column :shifts, :name, :string
  end
end
