class CreateTerminationReasons < ActiveRecord::Migration
  def change
    create_table :termination_reasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
