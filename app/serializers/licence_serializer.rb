# frozen_string_literal: true

class LicenceSerializer
  include JSONAPI::Serializer
  has_one :product, include_data: true

  attribute :expires_at
  attribute :key
end
