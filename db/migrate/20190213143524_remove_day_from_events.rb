class RemoveDayFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :day
    remove_column :events, :hours
    remove_column :events, :time
  end
end
