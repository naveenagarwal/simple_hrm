class CreateEmailSubscriptions < ActiveRecord::Migration
  def change
    create_table :email_subscriptions do |t|
      t.string :name
      t.boolean :enabled

      t.timestamps
    end
  end
end
