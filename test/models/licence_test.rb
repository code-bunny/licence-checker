# frozen_string_literal: true
require_relative '../test_helper'

class LicenceTest < TestCase
  def test_a_user_can_only_have_one_primary_licence
    assert true
  end

  def test_a_licence_has_a_product
    licence = Licence.find_by(key: 'som-sup-er-secret')
    assert_equal 'gamemaster-licence', licence.product.description
  end
end
