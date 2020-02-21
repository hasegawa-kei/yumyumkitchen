source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.3'

# Use mysql as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sassc-rails', '2.1.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'slim-rails'
gem 'html2slim'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'rails-ujs'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
 gem 'bcrypt', '~> 3.1.7'
 gem 'rails-i18n' #日本語対応
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'bootstrap', '4.1.3'
gem 'kaminari'


gem "font-awesome-sass", "< 5.0.13"
gem 'devise'
gem 'devise-bootstrap-views'
gem 'carrierwave'
gem 'fog'
gem 'dotenv-rails'
gem "cocoon"
gem 'simple_form'
gem 'faker'
gem 'ransack'
gem 'mini_racer'
gem 'sassc', '~> 2.1.0'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rails-flog', require: 'flog'
  gem 'rspec-rails', '~> 3.7'
  gem "factory_bot_rails", "~> 4.10.0"
  gem 'spring-commands-rspec'
  gem 'pry-byebug'
  gem 'rspec-retry'
  gem 'capistrano', "~> 3.10", require: false
  gem 'capistrano-bundler'
  gem 'capistrano-rails', "~> 1.4", require: false
  gem 'capistrano-rails-console'
  gem 'capistrano-rbenv'
  gem 'capistrano-rbenv-vars'
  gem 'capistrano-sidekiq'
  gem 'capistrano3-puma'
  gem 'capistrano-ssh-doctor', git: 'https://github.com/capistrano-plugins/capistrano-ssh-doctor.git'
  gem 'ed25519'
  gem 'bcrypt_pbkdf'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'annotate'
  gem 'html2slim'
end

group :test do
  gem 'capybara'
  gem 'webdrivers'
  gem 'launchy'
  gem 'selenium-webdriver', require: false
  gem 'shoulda-matchers',
    git: 'https://github.com/thoughtbot/shoulda-matchers.git',
    branch: 'rails-5'

end

group :production, :staging do
 gem 'unicorn'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
