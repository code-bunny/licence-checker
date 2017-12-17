# frozen_string_literal: true

class User < ActiveRecord::Base
  has_one :primary_licence, class_name: 'Licence', foreign_key: :key, primary_key: :licence_key

  def licence_valid?
    @licence_valid ||= true unless (Time.now >= primary_licence.expires_at) || primary_licence.expired_at
  end
end
