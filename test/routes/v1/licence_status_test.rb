# frozen_string_literal: true

require_relative '../../test_helper'

class ApiV1LicenceStatusTest < ApiV1TestCase
  def test_get_licence_status
    get '/licence-status?primary-licence-key=som-sup-er-secret'

    assert_equal 0, response.data[0].relationships['sub-products'].data.size
    assert_equal 'product-02', response.data[1].attributes.description
    assert_equal 1, response.data[1].relationships['sub-products'].data.size
  end

  def test_invalid_licence
    get '/licence-status?primary-licence-key=some-rubbish'

    assert_equal 'Invalid Licence.', response.error
  end
end
