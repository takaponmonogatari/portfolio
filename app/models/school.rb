class School < ApplicationRecord
  has_many :school_comments
  belongs_to :prefecture
  belongs_to :division

  validates :name, presence: true
  validates :name_kana, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  attachment :image


end
