class Quarter < ApplicationRecord
	has_many :blocks, dependent: :destroy
	validates :qName, presence: true

	def to_s
 
		qName

	end
end
