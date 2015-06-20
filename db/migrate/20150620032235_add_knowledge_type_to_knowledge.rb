class AddKnowledgeTypeToKnowledge < ActiveRecord::Migration
  def change
    add_reference :knowledges, :knowledge_type, index: true
  end
end
