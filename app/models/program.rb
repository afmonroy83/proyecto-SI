class Program < ApplicationRecord
  belongs_to :faculty
	has_many :subjects, dependent: :destroy
   	validates :programName, presence: true

  def to_s
  	programName
  end

end	