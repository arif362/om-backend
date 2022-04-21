module OmClients
  module V1
    class Users < Base
      version 'v1', using: :path
      format :json
      prefix :api

      resource :users do

        desc 'Create a user'
        params do
            requires :email, type: String, desc: 'New Email.'
        end
        post do
          user = User.find_by_email(params[:email])
          if user
            error!(failure_response('User already exist', HTTP_CODE[:CONFLICT], {}),
                   HTTP_CODE[:OK])
          end
          user = User.create!(email: params[:email])
          success_response('Successfully created', HTTP_CODE[:OK],
                           OmClients::Entities::User.represent(user))
        rescue StandardError => error
          Rails.logger.info "Failed to create user  for #{error.message}"
          error!(failure_response('Failed to create user', HTTP_CODE[:UNPROCESSABLE_ENTITY], {}),
                 HTTP_CODE[:OK])
        end

        desc 'Return a specific user'
        route_param :id do
          get do
            user = User.find_by(id: params[:id])
            unless user
              error!(failure_response('User Not Found', HTTP_CODE[:NOT_FOUND], {}),
                     HTTP_CODE[:OK])
            end
            success_response('Successfully Fetch', HTTP_CODE[:OK],
                             OmClients::Entities::User.represent(user))

          rescue StandardError => error
            Rails.logger.info "Failed to fetch user #{error.message}"
            error!(failure_response('Failed to fetch user', HTTP_CODE[:UNPROCESSABLE_ENTITY], {}),
                   HTTP_CODE[:OK])
          end
        end

      end

      end
    end
  end
