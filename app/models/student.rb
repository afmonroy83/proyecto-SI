class Student < ApplicationRecord
  belongs_to :user
  belongs_to :program
end
