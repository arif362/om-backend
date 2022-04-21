class Question < ApplicationRecord
  #Associations
  belongs_to :on_boarding_step
  has_many :question_answers, dependent: :restrict_with_exception

  #Validations
  validates :title, presence: true, uniqueness: true

end
