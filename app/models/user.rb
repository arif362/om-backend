class User < ApplicationRecord
  #Associations
  has_many :question_answers, dependent: :destroy

  #Validations
  validates :email, presence: true , uniqueness: true

end
