# frozen_string_literal: true

class User < ActiveRecord::Base
  has_one :primary_licence, class_name: 'Licence', foreign_key: :key, primary_key: :licence_key
  has_many :products, -> { where(arel_table[:description].not_eq('gamemaster-licence')) }, through: :licences
  has_many :licences

  def licence_valid?
    @licence_valid ||= !primary_licence.expired?
  end
end
