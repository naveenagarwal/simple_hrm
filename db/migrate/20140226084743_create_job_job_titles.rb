class CreateJobJobTitles < ActiveRecord::Migration
  def change
    create_table :job_titles do |t|
      t.string :name
      t.text :description
      t.string :specification
      t.text :note

      t.timestamps
    end
  end
end
