class AddTagsToKnowledges < ActiveRecord::Migration
  def change
    add_column :knowledges, :tags, :string
  end
end
