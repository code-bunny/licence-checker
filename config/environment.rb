# frozen_string_literal: true

require 'bundler'
require 'pathname'
require 'configatron'

configatron.app_root = Pathname.new(File.expand_path('../..', __FILE__))
configatron.env = ENV['RACK_ENV'] ? ENV['RACK_ENV'].to_sym : :development

Bundler.require(:default, configatron.env)
