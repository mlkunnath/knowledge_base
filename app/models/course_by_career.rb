class CourseByCareer < ActiveRecord::Base
  belongs_to :career
	belongs_to :course
end
