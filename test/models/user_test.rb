# frozen_string_literal: true
require_relative '../test_helper'

class UserTest < TestCase
  def test_finding_a_user_by_licence_key
    user = User.find_by(licence_key: 'som-sup-er-secret')
    assert user
  end

  def test_user_not_found
    user = User.find_by(licence_key: 'non-existant')
    assert !user
  end

  def test_finding_the_users_primary_licence
    user = User.find_by(licence_key: 'som-sup-er-secret')
    assert user.primary_licence
  end

  def test_user_ones_licence_is_valid
    user = User.find_by(licence_key: 'som-sup-er-secret')
    assert user.licence_valid?
  end

  def test_users_can_have_expired_licences
    user = User.find_by(licence_key: 'ano-ther-key')
    assert !user.licence_valid?

    user = User.find_by(licence_key: 'yet-anot-er-lic-ence')
    assert !user.licence_valid?
  end
end
