class Block < ApplicationRecord
  belongs_to :quarter
  has_many :rooms, dependent: :destroy
  validates :nBlock, presence: true

  def to_s
  	nBlock 
  end
end
