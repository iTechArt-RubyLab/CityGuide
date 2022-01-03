class CreateEntityProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :entity_profiles do |t|
      t.string :name
      t.string :surname
      t.date :age
      t.text :note
      t.text :contact_info
      t.string :title_company
      t.float :min_price
      t.integer :min_time
      t.float :price_one_hour
      t.float :price_two_hours
      t.time :start_work
      t.time :end_work
    
      t.timestamps
    end
  end
end
