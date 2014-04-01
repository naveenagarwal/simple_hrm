class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :name
      t.integer :screen
      t.integer :field_type
      t.references :custom_fieldable, polymorphic: true

      t.timestamps
    end

    add_index :custom_fields, ["custom_fieldable_type", "custom_fieldable_id"], name: "custom_fieldable_index"
  end
end
