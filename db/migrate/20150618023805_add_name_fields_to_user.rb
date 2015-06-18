class AddNameFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, limit: 100
    add_column :users, :lastname, :string, limit: 200
  end
end
