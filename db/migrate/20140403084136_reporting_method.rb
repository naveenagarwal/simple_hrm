class ReportingMethod < ActiveRecord::Migration
  def change
    create_table :reporting_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
