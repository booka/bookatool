RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com"
  config.gem "thoughtbot-shoulda", :lib => "shoulda", :source => "http://gems.github.com"

  config.time_zone = 'UTC'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
end