class CreateOrganizationLocations < ActiveRecord::Migration
  def change
    create_table :organization_locations do |t|
      t.string :name
      t.integer :number_of_employees

      t.timestamps
    end
  end
end
