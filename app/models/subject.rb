class Subject < ApplicationRecord
  belongs_to :area
  belongs_to :credit
  belongs_to :program
  validates :sName, presence: true

  def to_s
  	sName
  end


end
