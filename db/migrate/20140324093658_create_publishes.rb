class CreatePublishes < ActiveRecord::Migration
  def change
    create_table :publishes do |t|
      t.references :publisher, polymorphic: true, index: true
      t.integer :publish_to

      t.timestamps
    end
  end
end
