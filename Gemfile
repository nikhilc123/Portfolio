source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6', '>= 5.1.6.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Customize url
gem 'friendly_id', '~> 5.2.4'
# Debugger
gem 'pry-rails'
# Authentication
gem 'devise', '~> 4.6', '>= 4.6.1'
# Styling gem
gem 'bootstrap', '~> 4.3', '>= 4.3.1'
# Bootstrap JavaScript depends on jQuery
gem 'jquery-rails'
# Custom gem for footer
gem 'custom_nikhil'
# action and content based authorizations.
gem 'petergate', '~> 2.0', '>= 2.0.1'
# font awesome
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
# Pagination
gem 'kaminari', :git => 'https://github.com/kaminari/kaminari'
# UI widgets
gem 'jquery-ui-rails', '~> 5.0', '>= 5.0.5'
# Upload files
gem 'carrierwave', '~> 0.11.2'
# Mainupulates image with minimal memory
gem 'mini_magick', '~> 4.9', '>= 4.9.3'
# Use aws-sdk for S3 support in CarrierWave
gem 'carrierwave-aws', '~> 1.3'
# Load env variable form .env
gem 'dotenv-rails', '~> 2.1', '>= 2.1.2'
