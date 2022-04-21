module OmClients
  module Entities
    class User < Grape::Entity
      expose :id
      expose :email
      expose :is_verified
      expose :is_active
    end
  end
end