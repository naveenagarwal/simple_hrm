class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :full_name
      t.string :short_name
      t.string :symbol

      t.timestamps
    end
  end
end
