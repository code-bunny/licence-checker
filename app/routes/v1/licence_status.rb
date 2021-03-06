# frozen_string_literal: true

module Routes
  module V1
    class LicenceStatus < Grape::API
      helpers do
        # find the user that owns the licance if any
        def user
          @user ||= User.find_by!(licence_key: params[:"primary-licence-key"])
        end
      end

      rescue_from ActiveRecord::RecordNotFound do
        error!({ error: 'Invalid Licence.' }, 404, 'Content-Type' => 'text/error')
      end

      resource :'licence-status' do
        desc ''
        params do
          requires :"primary-licence-key", type: String, desc: 'The primary licence key for the account'
        end
        get do
          serialize user.products, include: ['licence', 'sub-products'], is_collection: true
        end
      end
    end
  end
end
