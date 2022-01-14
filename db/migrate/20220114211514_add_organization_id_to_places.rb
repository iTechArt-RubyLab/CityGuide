class AddOrganizationIdToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :organization_id, :integer
  end
end
