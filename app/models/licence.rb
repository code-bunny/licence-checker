# frozen_string_literal: true

class Licence < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
end
