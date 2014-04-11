class CreateLeavePeriods < ActiveRecord::Migration
  def change
    create_table :leave_periods do |t|
      t.string :start_month
      t.integer :start_date
      t.boolean :active

      t.timestamps
    end
  end
end
