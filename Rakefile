# frozen_string_literal: true

require 'bundler'
require 'rake/testtask'
load 'tasks/otr-activerecord.rake'

namespace :db do
  task :environment do
    require_relative 'config/application'
  end
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb']
end
