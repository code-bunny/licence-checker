# frozen_string_literal: true

class Licence < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def expired?
    @expired ||= true if (Time.now >= expires_at) || expired_at
  end
end
