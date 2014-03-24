class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :topic
      t.text :description
      t.datetime :published_at

      t.timestamps
    end
  end
end
