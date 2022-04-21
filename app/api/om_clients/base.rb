module OmClients
  class Base < Grape::API
    # Contains all the constant that will be used for development
    include OmClients::Helpers::Constants
    # Helpers to send success or failure message to response
    helpers OmClients::Helpers::ResponseHelper

    mount OmClients::V1::Steps
    mount OmClients::V1::Users
    mount OmClients::V1::Questions
  end
end