class CreateKnowledgeTypes < ActiveRecord::Migration
  def change
    create_table :knowledge_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
