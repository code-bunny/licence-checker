# frozen_string_literal: true

require_relative './test_case'

class ApiV1TestCase < TestCase
  include Rack::Test::Methods
  include ApiTestHelpers

  def app
    Routes::V1::API
  end
end
