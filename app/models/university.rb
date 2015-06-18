class University < ActiveRecord::Base
	has_many :career_by_universities
	has_many :careers, :through => :career_by_universities
end
