class Prefecture < ApplicationRecord
  has_many :schools

  validates :name, presence: true, uniqueness: true
end