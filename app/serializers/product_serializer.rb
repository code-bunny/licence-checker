# frozen_string_literal: true

class ProductSerializer
  include JSONAPI::Serializer

  attribute :description
end
