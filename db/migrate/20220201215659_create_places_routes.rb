class CreatePlacesRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :places_routes do |t|
      t.references :route, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
