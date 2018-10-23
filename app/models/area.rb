class Area < ApplicationRecord
	has_many :subjects, dependent: :destroy
	validates :arName, presence: true

	def to_s
 
		arName

	end
end
