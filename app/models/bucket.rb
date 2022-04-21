class Bucket < ApplicationRecord
  has_many :question_answers, dependent: :nullify
  belongs_to :user, optional: true
end
