class CreateCareerByUniversities < ActiveRecord::Migration
  def change
    create_table :career_by_universities do |t|
    	t.belongs_to :career, index: true
      t.belongs_to :university, index: true
      t.timestamps
    end
  end
end
