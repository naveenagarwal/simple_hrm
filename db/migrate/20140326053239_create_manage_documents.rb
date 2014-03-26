class CreateManageDocuments < ActiveRecord::Migration
  def change
    create_table :manage_documents do |t|
      t.string :topic
      t.text :description
      t.datetime :published_at
      t.belongs_to :document_category, index: true

      t.timestamps
    end
  end
end
