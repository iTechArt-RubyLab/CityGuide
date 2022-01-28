class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.references :tour_agency, null: false, foreign_key: {to_table: :organizations}
      t.references :visitor, null: false, foreign_key: {to_table: :users}
      t.date :start_date
      t.date :start_end
      t.references :hotel, null: false, foreign_key: {to_table: :organizations}
      t.decimal :cost
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
