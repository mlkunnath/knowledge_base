class Course < ActiveRecord::Base
  has_many :course_by_careers
	has_many :careers, :through => :course_by_careers
end
