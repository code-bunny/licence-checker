# frozen_string_literal: true

require_relative '../../test_helper'

class ApiV1LicenceStatusTest < ApiV1TestCase
  def test_get_licence_status_for_fully_licenced_user
    get '/licence-status?primary-licence-key=som-sup-er-secret'

    assert_equal 2, response.data.size
  end
end
