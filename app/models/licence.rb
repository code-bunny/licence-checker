# frozen_string_literal: true

class Licence < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def valid?
    @valid ||= true unless (Time.now >= expires_at) || expired_at
  end
end
