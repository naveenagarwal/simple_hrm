class CreateLdapConfigurations < ActiveRecord::Migration
  def change
    create_table :ldap_configurations do |t|
      t.string :server
      t.integer :port
      t.integer :implementation
      t.integer :protocol
      t.string :user_suffix
      t.boolean :enable_authentication, default: false
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
