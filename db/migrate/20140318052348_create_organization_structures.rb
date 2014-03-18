class CreateOrganizationStructures < ActiveRecord::Migration
  def change
    create_table :organization_structures do |t|
      t.string :unit_id
      t.string :name
      t.string :description
      t.integer :node_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
