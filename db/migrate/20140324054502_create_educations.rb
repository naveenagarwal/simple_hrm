class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :level

      t.timestamps
    end
  end
end
