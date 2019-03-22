class AddZipcodeToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :zipcode, :string
  end
end
