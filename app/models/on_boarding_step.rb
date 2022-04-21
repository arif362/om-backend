class OnBoardingStep < ApplicationRecord
  #Associations
  has_many :questions, dependent: :destroy

  #Validations
  validates :title, presence: true, uniqueness: true
end
