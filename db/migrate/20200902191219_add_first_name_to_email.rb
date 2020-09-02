class AddFirstNameToEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :first_name, :string
  end
end
