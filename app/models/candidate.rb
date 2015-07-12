class Candidate < ActiveRecord::Base
	validates :first_name, presence: true 
	validates :last_name, presence: true
	validates :slogan, presence: true
	validates :slogan, uniqueness: true
	
	belongs_to :position
end
