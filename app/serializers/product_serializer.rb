# frozen_string_literal: true

class ProductSerializer
  include JSONAPI::Serializer
  has_one :licence

  attribute :description
end
