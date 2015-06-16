class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :show_name, limit: 100
      t.string :description, limit: 250
      t.attachment :file
      t.references :tag, index: true

      t.timestamps
    end
  end
end
