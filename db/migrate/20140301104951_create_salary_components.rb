class CreateSalaryComponents < ActiveRecord::Migration
  def change
    create_table :salary_components do |t|
      t.string :name
      t.integer :component_type
      t.boolean :only_ctc
      t.integer :value_type

      t.timestamps
    end
  end
end
