# frozen_string_literal: true

require_relative '../../test_helper'

class ApiV1LicenceStatusTest < ApiV1TestCase

  def expected_responce
    {
      data: {
        type: 'users',
        id: '1',
        links: { self: '/users/1' }
      }
    }
  end

  def test_get_licence_status_for_fully_licenced_user
    get '/licence-status?primary-licence-key=som-sup-er-secret'
    assert_equal expected_responce, json_response
  end
end
