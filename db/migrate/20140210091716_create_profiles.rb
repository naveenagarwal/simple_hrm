class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.integer :gender
      t.integer :maritial_status
      t.references :profileable, polymorphic: true
      t.timestamps
    end
  end
end
