class CreateEmailConfigurations < ActiveRecord::Migration
  def change
    create_table :email_configurations do |t|
      t.string :address
      t.integer :port
      t.string :domain
      t.string :username
      t.string :password
      t.integer :authentication_type
      t.boolean :enable_starttls_auto, default: false
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
