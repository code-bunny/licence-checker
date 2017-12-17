# frozen_string_literal: true

module Routes
  module V1
    class Products < Grape::API
      helpers do
        # find the user that owns the licance if any
        def user
          @user ||= User.where(licence_key: params[:"primary-licence-key"])
        end
      end

      resource :products do
        desc ''
        params do
          requires :"primary-licence-key", type: String, desc: 'The primary licence key for the account'
        end
        get do
          {}
        end
      end
    end
  end
end
