# frozen_string_literal: true

require_relative '../../test_helper'

class ApiV1LicenceStatusTest < ApiV1TestCase
  def test_get_licence_status_for_fully_licenced_user
    get '/licence-status?primary-licence-key=som-sup-er-secret'

    assert_equal 2, response.data.size

    first_product  = response.data[0]
    assert_equal 0, first_product.relationships['sub-products'].data.size

    second_product = response.data[1]
    second_product_attributes = second_product.attributes

    assert_equal 'product-02', second_product_attributes.description
    assert_equal 1, second_product.relationships['sub-products'].data.size
  end

  def test_invalid_licence
    get '/licence-status?primary-licence-key=some-rubbish'

    assert_equal 'Invalid Licence.', response.error
  end
end
