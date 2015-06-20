class RemoveTagIdFromKnowledges < ActiveRecord::Migration
  def change
    remove_column :knowledges, :tag_id, :integer
  end
end
