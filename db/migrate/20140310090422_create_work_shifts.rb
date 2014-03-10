class CreateWorkShifts < ActiveRecord::Migration
  def change
    create_table :work_shifts do |t|
      t.string :name
      t.time :from
      t.time :to

      t.timestamps
    end
  end
end
