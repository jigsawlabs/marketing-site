class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :day
      t.string :hours

      t.timestamps
    end
  end
end
