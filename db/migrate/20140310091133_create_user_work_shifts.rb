class CreateUserWorkShifts < ActiveRecord::Migration
  def change
    create_table :user_work_shifts do |t|
      t.integer :user_id
      t.integer :work_shift_id

      t.timestamps
    end
  end
end
