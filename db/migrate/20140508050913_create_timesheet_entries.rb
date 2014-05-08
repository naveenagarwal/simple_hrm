class CreateTimesheetEntries < ActiveRecord::Migration
  def change
    create_table :timesheet_entries do |t|
      t.references :project, index: true
      t.references :timesheet, index: true
      t.integer :time_spent
      t.references :project_task, index: true
      t.text :description

      t.timestamps
    end
  end
end
