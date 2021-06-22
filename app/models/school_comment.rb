class SchoolComment < ApplicationRecord
  belongs_to :school

  validates :position, presence: true
  validates :rate, presence: true
  validates :number, length: { is: 4 }
end
