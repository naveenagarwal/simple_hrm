class CreateWorkWeeks < ActiveRecord::Migration
  def change
    create_table :work_weeks do |t|
      t.string :country
      t.text :weekdays_info

      t.timestamps
    end
  end
end
