class CareerByUniversity < ActiveRecord::Base
	belongs_to :career
	belongs_to :university
end
