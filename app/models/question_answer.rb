class QuestionAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :user, optional: true
  belongs_to :bucket, optional: true
end
