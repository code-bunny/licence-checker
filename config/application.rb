# frozen_string_literal: true

require './config/environment'
$LOAD_PATH.unshift configatron.app_root.join('lib')

# Connect to database
OTR::ActiveRecord.configure_from_file! configatron.app_root.join('config', 'database.yml')
ActiveRecord::Base.raise_in_transactional_callbacks = true

# Load application
[
  %w[app models ** *.rb],
  %w[app serializers ** *.rb],
  %w[app routes v* *.rb],
  %w[app routes ** *.rb]
].each do |pattern|
  Dir.glob(configatron.app_root.join(*pattern)).each { |file| require file }
end
