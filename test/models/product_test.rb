# frozen_string_literal: true

require_relative '../test_helper'

class ProductTest < TestCase
  def test_duplicate_products_cant_be_created
    product = Product.create description: 'product-01'
    assert !product.valid?
    assert_includes product.errors[:description], 'has already been taken'
  end

  def test_products_can_have_sub_products
    product = Product.find(3)
    assert_equal 1, product.sub_products.size

    product = Product.find(1)
    assert_equal 0, product.sub_products.size
  end
end
