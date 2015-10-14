source 'https://rubygems.org'
ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Bootstrap SASS for other stylesheets
gem 'bootstrap-sass', '~> 3.3.3'
gem 'autoprefixer-rails'

# Use font-awesome SASS for improved styling
gem 'font-awesome-sass', '~> 4.3.0'
gem 'bootstrap-social-rails', '~> 4.8.0'

# Required by the bootstrap template included
gem 'html5shiv-js-rails'
gem 'respond-js-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#HAML templating engine
gem 'haml-rails', '~> 0.9.0'

# Use devise for user authentication
gem 'devise'

# Use Google OmniAuth2 with devise for Google sign-on
gem 'omniauth-google-oauth2'

# Use Facebook Oauth with devise
gem 'omniauth-facebook'

# Use Figaro to store environment secrets
gem 'figaro'

# Use CarrierWave for file upload
gem 'carrierwave'

# Use Puma web server for Heroku deployment
gem 'puma'

# Use newrelic_rpm gem to keep heroku app alive
gem 'newrelic_rpm'

# Use Factory Girl for test fixtures
gem 'factory_girl_rails', '~> 4.0'

gem 'bootstrap-datepicker-rails'

group :development do
  gem 'better_errors'
end

group :development, :test do
  # Use Rspec for testing
  gem 'rspec-rails', '~> 3.0'

  gem 'pry'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


group :test do
  # Use capybara engine with Rspec for testing
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'selenium-webdriver'
  gem 'simplecov', :require => false
end

group :production do
  # Rails 4 Asset Pipeline on Heroku. Serve static assets
  gem 'rails_12factor'
end
