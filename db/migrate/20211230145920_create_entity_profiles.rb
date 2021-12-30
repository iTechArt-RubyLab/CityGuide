class CreateEntityProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :entity_profiles do |t|
      t.string :title_company
      t.float :min_price
      t.time :min_time
      t.float :price_one_hour
      t.float :price_two_hours
      t.integer :time_work

      t.timestamps
    end
  end
end
