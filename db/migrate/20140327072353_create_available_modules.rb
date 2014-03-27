class CreateAvailableModules < ActiveRecord::Migration
  def change
    create_table :available_modules do |t|
      t.string :name
      t.boolean :enabled

      t.timestamps
    end
  end
end
