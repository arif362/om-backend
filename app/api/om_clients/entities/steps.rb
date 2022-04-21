module OmClients
  module Entities
    class Steps < Grape::Entity
      expose :id, as: :step_id
      expose :title
      expose :questions, using: OmClients::Entities::Question
    end
  end
end