# frozen_string_literal: true

class Product < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true
  has_many :sub_products, class_name: 'Product'
end
