# frozen_string_literal: true
module OmClients::Helpers
  module ResponseHelper
    extend Grape::API::Helpers

    def success_response(msg, status_code, data = {})
      {
        success: true,
        status: status_code,
        message: msg,
        data: data,
      }
    end

    def failure_response(msg, status_code, data = {})
      {
        success: false,
        status: status_code,
        message: msg,
        data: data,
      }
    end
  end
end
