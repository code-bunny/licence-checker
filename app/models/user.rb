# frozen_string_literal: true

class User < ActiveRecord::Base
  has_one :primary_licence, class_name: 'Licence', foreign_key: :key, primary_key: :licence_key
  has_many :products, lambda {
    where(arel_table[:description].not_eq('gamemaster-licence')).where(product_id: nil)
  }, through: :licences
  has_many :licences

  def licence_valid?
    @licence_valid ||= !primary_licence.expired?
  end
end
