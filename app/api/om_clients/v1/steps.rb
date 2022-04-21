module OmClients
  module V1
    class Steps < Base
      version 'v1', using: :path
      format :json
      prefix :api

      resource :steps do
        desc 'Return list of on boarding steps'
        get do
          steps = OnBoardingStep.all
          success_response('Successfully Fetch', HTTP_CODE[:OK],
                           OmClients::Entities::Steps.represent(steps))

        rescue StandardError => error
          Rails.logger.info "Failed to fetch steps #{error.message}"
          error!(failure_response('Failed to fetch steps', HTTP_CODE[:UNPROCESSABLE_ENTITY], {}),
                 HTTP_CODE[:OK])
        end

        desc 'Return a specific step'
        route_param :id do
          get do
            step = OnBoardingStep.find_by(id: params[:id])
            unless step
              error!(failure_response('Step Not Found', HTTP_CODE[:NOT_FOUND], {}),
                     HTTP_CODE[:OK])
            end
            success_response('Successfully Fetch', HTTP_CODE[:OK],
                             OmClients::Entities::Steps.represent(step))

          rescue StandardError => error
            Rails.logger.info "Failed to fetch step #{error.message}"
            error!(failure_response('Failed to fetch step', HTTP_CODE[:UNPROCESSABLE_ENTITY], {}),
                   HTTP_CODE[:OK])
          end
        end

      end
    end
  end
end