class DropTagByKnowledges < ActiveRecord::Migration
  def change
      drop_table :tag_by_knowledges
  end
end
