class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :file
      t.string :file_content_type
      t.integer :file_size
      t.references :attachment, polymorphic: true, index: true
      t.references :creator, polymorphic: true, index: true
      t.text :description

      t.timestamps
    end
  end
end
