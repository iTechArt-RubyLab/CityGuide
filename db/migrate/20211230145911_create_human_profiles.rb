class CreateHumanProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :human_profiles do |t|
      t.string :name
      t.string :surname
      t.date :age
      t.text :note
      t.references :contact_information

      t.timestamps
    end
  end
end
