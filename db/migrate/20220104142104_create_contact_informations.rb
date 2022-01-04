class CreateContactInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_informations do |t|
      t.string :phone_number
      t.string :email_address
      t.string :address
      t.string :messenger_link

      t.timestamps
    end
  end
end
