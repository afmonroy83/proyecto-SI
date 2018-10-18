class Quarter < ApplicationRecord
	has_many :blocks, dependent: :destroy
	validates :q_Name, presence: true

	def to_s
		q_Name
	end
end
