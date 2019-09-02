class Course < ApplicationRecord
  belongs_to :professor
  has_many :reviews, dependent: :destroy

  validates :professor, presence: true
  validates :name, presence: true
  validates :catalog_number, presence: true
  validates :description, presence: true

  def average_rating
    ratings = reviews.pluck(:rating)
    ratings.reduce(:+) / ratings.size.to_f
  end
end
