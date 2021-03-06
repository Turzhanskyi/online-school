source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.7'
gem 'pg'

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
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks'
gem 'jqtools-rails'

gem 'bootstrap-sass'
gem 'bootstrap-select-rails'

gem 'slim-rails'
gem 'simple_form'
gem 'cocoon'

gem 'tinymce-rails'
gem 'tinymce-rails-imageupload', '~> 4.0.17.beta.3'

gem 'best_in_place'

gem 'breadcrumbs_on_rails'
gem 'kaminari'
gem 'bootstrap-kaminari-views'

gem 'draper'
# gem 'ransack'

gem 'devise'

gem 'state_machines-activerecord'

gem 'carrierwave'
gem 'mini_magick'

gem 'acts_as_list'

group :development, :test do
  gem 'rspec-rails'

  gem 'pry-rails'
  gem 'pry-theme'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: :mri
end

group :development do
  gem 'priscilla'

  gem "better_errors"
  gem "binding_of_caller"
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  #gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'shoulda-matchers', require: false

  gem 'timecop'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'simplecov'
end
