class Credit < ApplicationRecord
	has_one :subjects, dependent: :destroy
	validates :numeroDeCreditos, presence: true

  def to_int
  	numeroDeCreditos
  end
end
