class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :surname
      t.string :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
