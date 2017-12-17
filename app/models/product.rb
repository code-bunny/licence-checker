# frozen_string_literal: true

class Product < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true
end
