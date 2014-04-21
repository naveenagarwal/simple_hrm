class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.date :on
      t.boolean :repeat_annually
      t.integer :period
      t.string :country

      t.timestamps
    end
  end
end
