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

        def serialize_errors(errors)
          JSONAPI::Serializer.serialize_errors(errors)
        end
      end

      rescue_from ActiveRecord::RecordNotFound do |e|
        error!(serialize_errors([{ detail: e.message }]), 404, 'Content-Type' => 'text/error')
      end

      rescue_from ActiveRecord::RecordInvalid do |e|
        error!(serialize_errors(e.record.errors), 422, 'Content-Type' => 'text/error')
      end

      rescue_from Grape::Exceptions::ValidationErrors do |e|
        error!(serialize_errors(e), 400, 'Content-Type' => 'text/error')
      end

      before do
        header['Access-Control-Allow-Origin'] = '*'
        header['Access-Control-Request-Method'] = '*'
      end

      mount Routes::V1::Products
    end
  end
end
