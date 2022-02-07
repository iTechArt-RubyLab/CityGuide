class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.references :tour_agency, null: false, foreign_key: {to_table: :organizations}
      t.references :visitor, null: false, foreign_key: {to_table: :users}
      t.date :start_date
      t.date :end_date
      t.references :hotel, null: false, foreign_key: {to_table: :organizations}
      t.integer :status
      t.decimal :cost
      t.string :mode_of_transport
      t.timestamps
    end
  end
end
