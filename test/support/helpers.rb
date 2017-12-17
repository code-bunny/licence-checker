# frozen_string_literal: true

module ApiTestHelpers
  def response
    JSON.parse(last_response.body, object_class: OpenStruct)
  end
end
