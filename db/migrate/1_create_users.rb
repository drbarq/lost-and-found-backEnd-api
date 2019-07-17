class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :email_address
      t.string :password
      t.string :qr_Code

      t.timestamps
    end
  end
end
