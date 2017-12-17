# frozen_string_literal: true

module Routes
  module V1
    class API < Grape::API
      version 'v1', using: :accept_version_header, vendor: 'code-bunny'
      content_type :json, 'application/json;charset=UTF-8'
      default_format :json
      format :json

      helpers do
        def serialize(model, options = {})
          JSONAPI::Serializer.serialize(model, options)
        end
      end

      mount Routes::V1::LicenceStatus
    end
  end
end
