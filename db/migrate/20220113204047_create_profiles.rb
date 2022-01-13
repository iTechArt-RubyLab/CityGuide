class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :surname
      t.date :birthday
      t.text :note
      t.string :phone_number
      t.string :email_address

      t.timestamps
    end
  end
end
