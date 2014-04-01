class CreateOpenidProviders < ActiveRecord::Migration
  def change
    create_table :openid_providers do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
