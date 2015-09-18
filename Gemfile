source 'http://rubygems.org'

gem 'rails', '~> 4.1.0'
gem 'pg'
gem 'activerecord-postgis-adapter'

# Only uncomment the debugger if you are using it as it slows things down
# gem 'ruby-debug19', require: 'ruby-debug'

# Front-end gems
gem 'jquery-rails', '~> 3.0.0' # pin due to incompatible jquery-tools vs jquery 1.8. See https://github.com/cyclestreets/cyclescape/issues/75
gem 'haml-rails'
gem 'formtastic', '~> 2.0'
gem 'map_layers'
gem 'rails3-jquery-autocomplete'
gem 'rgeo-geojson'
gem 'will_paginate', '~> 3.0'
gem 'rails_autolink'
gem 'tweet-button'
gem 'jquery-turbolinks'

# Back-end gems
gem 'devise', '~> 3.4.0'
gem 'devise_invitable'
gem 'devise-i18n'
gem 'declarative_authorization'
gem 'thin'
gem 'aasm'
gem 'rack-cache', require: 'rack/cache'
gem 'dragonfly', '~> 0.9.15' # pin to delay the upgrade to 1.x
gem 'redis-rails'
gem 'resque'
gem 'acts_as_indexed', github: 'nikolai-b/acts_as_indexed'
gem 'thumbs_up', '~> 0.4.6'
gem 'exceptional'
gem 'foreman'
gem 'whenever'
gem 'draper'
gem 'email_reply_parser'
gem 'memoist'
gem 'excon'
gem 'paranoia', '~> 2.0'
gem 'grape'

gem 'sass-rails', '~> 4.0.3'
gem 'sass'
gem 'coffee-rails', '~> 4.0.0'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-ui-rails', '~> 5.0.0'
gem 'turbolinks'
gem 'rails-observers'
gem 'rails-i18n', '~> 4.0.0'
gem 'will-paginate-i18n'

group :development do
  gem 'letter_opener'
  gem 'quiet_assets'
  gem 'annotate', '>= 2.5.0', require: false
  gem 'bullet'
  # Following is required for Resque workers in development to load due to
  # declarative_authorization development dependency when Rails engines are eager loaded
  gem 'ruby_parser'
end

group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'ruby-prof'
  gem 'parallel_tests'
  gem 'pry-byebug'
end

group :test do
  gem 'rspec-collection_matchers'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'launchy'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'email_spec'
  gem 'database_cleaner'
  gem 'webmock'
end
