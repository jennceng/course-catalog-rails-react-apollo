class Professor < ApplicationRecord
  has_many :courses, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
  validates :office, presence: true 
end
