class Area < ApplicationRecord

	has_many :subjects, dependent: :destroy
	validates :nameArea, presence: true

 def to_s
  	nameArea
 end

end
