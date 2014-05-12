class CreateProjectTasks < ActiveRecord::Migration
  def change
    create_table :project_tasks do |t|
      t.string :name

      t.timestamps
    end
  end
end
