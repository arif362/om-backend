module OmClients
  module V1
    class Questions < Base
      version 'v1', using: :path
      format :json
      prefix :api

      resource :questions do
        desc 'Return list of on boarding steps'
        get do
          questions = Question.all
          success_response('Successfully Fetch', HTTP_CODE[:OK],
                           OmClients::Entities::Question.represent(questions))

        rescue StandardError => error
          Rails.logger.info "Failed to fetch questions #{error.message}"
          error!(failure_response('Failed to fetch questions', HTTP_CODE[:UNPROCESSABLE_ENTITY], {}),
                 HTTP_CODE[:OK])
        end

        desc 'Return a specific question'
        route_param :id do
          get do
            question = Question.find_by(id: params[:id])
            unless question
              error!(failure_response('Question Not Found', HTTP_CODE[:NOT_FOUND], {}),
                     HTTP_CODE[:OK])
            end
            success_response('Successfully Fetch', HTTP_CODE[:OK],
                             OmClients::Entities::Question.represent(question))

          rescue StandardError => error
            Rails.logger.info "Failed to fetch question #{error.message}"
            error!(failure_response('Failed to fetch question', HTTP_CODE[:UNPROCESSABLE_ENTITY], {}),
                   HTTP_CODE[:OK])
          end
        end

      end
    end
  end
end