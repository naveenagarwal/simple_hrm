class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.references :subscribable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
