class CreateCourseByCareers < ActiveRecord::Migration
  def change
    create_table :course_by_careers do |t|
      t.belongs_to :course, index: true
      t.belongs_to :career, index: true
      t.timestamps
    end
  end
end
