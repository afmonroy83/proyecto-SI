class Block < ApplicationRecord
  belongs_to :quarter
  	has_many :rooms, dependent: :destroy
	validates :bNum, presence: true

	def to_s
 
		bNum

	end
end
