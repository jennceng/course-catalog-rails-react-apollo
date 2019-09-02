class Review < ApplicationRecord
  belongs_to :course

  validates :course, presence: true
  validates :rating, presence: true
end
