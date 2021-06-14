class School < ApplicationRecord
  belongs_to :prefecture
  belongs_to :division

  validates :name, presence: true
  validates :name_kana, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  attachment :image

  scope :where_prefecture_active, -> { joins(:prefecture).where(prefectures: { is_active: true }) }

  def self.recommended
    recommends = []
    active_prefectures = Prefecture.only_active.includes(:schools)
    active_prefectures.each do |prefecture|
      school = prefecture.schools.last
      recommends << school if school
    end
    recommends
  end
end
