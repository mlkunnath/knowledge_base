class AddShortNameToUniversities < ActiveRecord::Migration
  def change
    add_column :universities, :short_name, :string, limit: 50
  end
end
