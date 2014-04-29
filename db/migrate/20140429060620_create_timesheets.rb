class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.date :for_date
      t.references :user, index: true

      t.timestamps
    end
  end
end
