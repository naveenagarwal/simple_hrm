class CreateLeaveEntitlements < ActiveRecord::Migration
  def change
    create_table :leave_entitlements do |t|
      t.integer :user_id
      t.integer :leave_type_id
      t.date :from
      t.date :to
      t.integer :location_id

      t.timestamps
    end
  end
end
