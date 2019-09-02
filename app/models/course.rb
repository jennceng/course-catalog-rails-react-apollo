class Course < ApplicationRecord
  belongs_to :professor
  has_many :reviews, dependent: :destroy

  validates :professor, presence: true
  validates :name, presence: true
  validates :catalog_number, presence: true
  validates :description, presence: true
end
