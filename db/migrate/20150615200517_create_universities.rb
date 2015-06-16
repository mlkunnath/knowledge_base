class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :full_name, limit: 250
      t.attachment :logo

      t.timestamps
    end
  end
end
