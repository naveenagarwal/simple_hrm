class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.references :user, index: true
      t.references :leave_type, index: true
      t.date :from
      t.date :to
      t.text :comment
      t.integer :status

      t.timestamps
    end
  end
end
