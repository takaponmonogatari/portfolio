class School < ApplicationRecord
  has_many :school_comments
  belongs_to :prefecture
  belongs_to :division

  validates :name, presence: true
  validates :name_kana, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  attachment :image

  def self.search_school(content, method)
    if method == "perfect"
      School.where(name: content+"%")
    elsif method == "forward"
      School.where("name LIKE ?", "%"+content)
    elsif method == "backward"
      School.where("name LIKE ?", content+"%")
    else
      School.where("name LIKE ?", "%"+content+"%")
    end
  end
  def self.search_club(content, method)
    if method == "perfect"
      School.where(club: content+"%")
    elsif method == "forward"
      School.where("club LIKE ?", "%"+content)
    elsif method == "backward"
      School.where("club LIKE ?", content+"%")
    else
      School.where("club LIKE ?", "%"+content+"%")
    end
  end
end
