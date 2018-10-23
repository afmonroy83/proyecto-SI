class Faculty < ApplicationRecord
	has_many :programs, dependent: :destroy
	validates :facultyName, presence: true

	def to_s
 
		facultyName

	end
end
