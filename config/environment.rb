RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "newrelic_rpm"
  #  config.gem "searchlogic"
  config.gem "authlogic"
  config.gem "formtastic"
  #config.gem 'will_paginate', :version => '~> 2.3.11', :source => 'http://gemcutter.org'
  config.gem "graysky-translator", :lib => "translator", :source => "http://gemcutter.com"
  # config.gem "translator", :source => 'http://gemcutter.org'
  # config.gem "inherited_resources", :source => 'http://gemcutter.org'
  config.gem "josevalim-inherited_resources", :lib => 'inherited_resources',  :source => 'http://gemcutter.org'
  config.time_zone = 'UTC'

  config.load_paths << "#{RAILS_ROOT}/lib"
  %w().each do |dir|
    config.load_paths << "#{RAILS_ROOT}/app/#{dir}"
  end


  config.i18n.default_locale = :es
end