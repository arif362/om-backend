module OmClients
  module Entities
    class Question < Grape::Entity
      expose :id, as: :question_id
      expose :on_boarding_step_id, as: :step_id
      expose :title
    end
  end
end