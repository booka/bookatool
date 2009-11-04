RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "newrelic_rpm"
  config.gem "searchlogic"
  config.gem "authlogic"
  config.gem "formtastic"
  config.gem 'mislav-will_paginate', :version => '~> 2.3.8', :lib => 'will_paginate',    :source => 'http://gems.github.com'
  config.gem "graysky-translator", :lib => "translator"
  config.gem "josevalim-inherited_resources", :lib => 'inherited_resources'
  config.time_zone = 'UTC'

  config.i18n.default_locale = :es
end