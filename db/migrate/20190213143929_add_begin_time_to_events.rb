class AddBeginTimeToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :begin_time, :datetime
    add_column :events, :end_time, :datetime
    add_column :events, :location_id, :integer
  end
end
