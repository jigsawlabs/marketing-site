class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.date :preferred_course_date
      t.date :date_of_birth
      t.string :linkedin
      t.string :github
      t.string :interested_field

      t.timestamps
    end
  end
end
