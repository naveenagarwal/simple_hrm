class CreateLeaveNotifications < ActiveRecord::Migration
  def change
    create_table :leave_notifications do |t|
      t.string :name
      t.date :send_on
      t.integer :for_days
      t.string :mail_subject

      t.timestamps
    end
  end
end
