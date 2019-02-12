class AddDescriptionToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :description, :text
    add_column :events, :time, :datetime
  end
end
