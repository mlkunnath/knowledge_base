class Career < ActiveRecord::Base
	has_many :career_by_universities
	has_many :universities, :through => :career_by_universities
	
	has_many :course_by_careers
	has_many :courses, :through => :course_by_careers
end
