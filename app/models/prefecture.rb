class Prefecture < ApplicationRecord
  has_many :schools
  
  scope :only_active, -> { where(is_active: true) }
  
  validates :name, presence: true, uniqueness: true
end
