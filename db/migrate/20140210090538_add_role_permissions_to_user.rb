class AddRolePermissionsToUser < ActiveRecord::Migration
  def change
    add_column :users, :role_id, :integer
    add_column :users, :permissions, :text
    add_column :users, :username, :string
    add_column :users, :status, :integer, default: USER::STATUS[:active]
  end
end
