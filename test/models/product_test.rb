# frozen_string_literal: true
require_relative '../test_helper'

class ProductTest < TestCase
  def test_duplicate_products_cant_be_created
    product = Product.create description: 'product-01'
    assert !product.valid?
    assert_includes product.errors[:description], 'has already been taken'
  end
end
