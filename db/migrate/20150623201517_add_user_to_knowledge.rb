class AddUserToKnowledge < ActiveRecord::Migration
  def change
    add_reference :knowledges, :user, index: true
  end
end
