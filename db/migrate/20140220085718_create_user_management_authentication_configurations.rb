class CreateUserManagementAuthenticationConfigurations < ActiveRecord::Migration
  def self.up
    create_table :authentication_configurations do |t|
      t.boolean :status
      t.boolean :reset_password
      t.boolean :enable_recaptcha
      t.integer :attempts_to_enable_recaptcha
      t.timestamps
    end
  end

  def self.down
    drop_table :authentication_configurations
  end
end
