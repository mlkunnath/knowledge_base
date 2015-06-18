class Career < ActiveRecord::Base
	has_many :career_by_universities
	has_many :universities, :through => :career_by_universities
end
