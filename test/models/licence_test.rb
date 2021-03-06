# frozen_string_literal: true

require_relative '../test_helper'

class LicenceTest < TestCase
  def test_a_licence_has_a_product
    licence = Licence.find_by(key: 'som-sup-er-secret')
    assert_equal 'gamemaster-licence', licence.product.description
  end

  def test_a_licence_can_expire
    licence = Licence.find_by(key: 'ano-ther-key')
    assert licence.expired?

    licence = Licence.find_by(key: 'yet-anot-er-lic-ence')
    assert licence.expired?
  end
end
