class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.references :tour_agency, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :start_end
      t.references :hotel, null: false, foreign_key: true
      t.decimal :cost
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
