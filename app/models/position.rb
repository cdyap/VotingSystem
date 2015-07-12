class Position < ActiveRecord::Base

	validates :name, presence: true 
	validates :name, uniqueness: true
	
	has_many :candidates

	def to_s
		"#{self.name}"
	end
end
