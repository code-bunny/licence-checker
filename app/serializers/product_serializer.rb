# frozen_string_literal: true

class ProductSerializer
  include JSONAPI::Serializer
  has_one :licence, include_data: true
  has_many :sub_products, include_data: true

  attribute :description
end
