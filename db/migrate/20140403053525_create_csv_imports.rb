class CreateCsvImports < ActiveRecord::Migration
  def change
    create_table :csv_imports do |t|
      t.string :attachment

      t.timestamps
    end
  end
end
