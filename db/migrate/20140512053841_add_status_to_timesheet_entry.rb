class AddStatusToTimesheetEntry < ActiveRecord::Migration
  def change
    add_column :timesheet_entries, :status, :integer
  end
end
