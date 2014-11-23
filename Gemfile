source 'https://rubygems.org'

ruby '2.1.0'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass'
gem 'jquery-rails'
gem "minitest-rails"
gem 'devise'
gem 'pundit'
gem 'faker'
gem 'omniauth-twitter'
gem 'figaro'
gem "strong_parameters"
gem 'carrierwave'
# gem 'rmagick'
gem 'fog'
gem 'unf'
gem 'carrierwave_direct'
gem 'sidekiq'
gem "redis", "~> 3.0.6"
gem "jquery-smooth-scroll-rails", "~> 0.0.3"
gem 'newrelic_rpm'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end



group :production do
  gem 'pg'
  gem 'rails_12factor'
end


group :development, :test do
  gem "minitest-rails"
  gem "minitest-focus"
  gem "minitest-colorize"
  gem 'sqlite3'
  gem "minitest-rails"
  gem "capybara-webkit"
  gem "launchy"
end

group :test do
  gem "minitest-rails-capybara"
  gem "turn"
  gem 'simplecov', :require => false
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
