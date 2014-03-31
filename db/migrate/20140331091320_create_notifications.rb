class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :event_name
      t.text :employee_ids
      t.integer :event_id
      t.integer :notified_before

      t.timestamps
    end
  end
end
