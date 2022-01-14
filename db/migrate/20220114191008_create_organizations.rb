class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :title
      t.float :min_price
      t.integer :min_time
      t.float :price_one_hour
      t.float :price_two_hours
      t.time :start_work
      t.time :end_work
      t.integer :type_of_services
      t.integer :status

      t.timestamps
    end
  end
end
