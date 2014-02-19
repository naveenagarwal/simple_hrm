class AddCounterCacheToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :users_count, :integer
  end
end
