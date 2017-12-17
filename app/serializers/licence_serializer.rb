# frozen_string_literal: true

class LicenceSerializer
  include JSONAPI::Serializer

  attribute :expires_at
  attribute :key
end
