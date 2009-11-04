RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "newrelic_rpm"
#  config.gem "searchlogic"
  config.gem "authlogic"
  config.gem "formtastic"
  config.gem 'will_paginate'
  config.gem "translator"
  config.gem "inherited_resources"
  config.time_zone = 'UTC'

  config.i18n.default_locale = :es
end