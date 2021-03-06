source "https://rubygems.org"

gem "rails", "~> 5.0.0"
gem "pg"

gem "puma", "~> 3.0"
gem "dotenv-rails"
gem "devise"
gem "kaminari"
gem "draper", github: "audionerd/draper", branch: "rails5"
gem "decent_decoration", github: "fs/decent_decoration", branch: "decent-exposure-3-0"
gem "decent_exposure"
gem "activemodel-serializers-xml", github: "rails/activemodel-serializers-xml"
gem "pundit"
gem "carrierwave"
gem "mini_magick"

# Front
gem "sass-rails", "~> 5.0.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "foundation-icons-sass-rails"
gem "foundation-rails"
gem "autoprefixer-rails"
gem "slim"
gem "skim"
gem "active_link_to"
gem "metamagic"
gem "simple_form"

group :test do
  gem "capybara"
  gem "codeclimate-test-reporter", require: false
  gem "database_cleaner"
  gem "email_spec"
  gem "formulaic"
  gem "launchy"
  gem "rspec-its"
  gem "shoulda-matchers"
  gem "webmock", require: false
end

group :development, :test do
  gem "byebug", platform: :mri
  gem "faker"
  gem "jasmine", "> 2.0"
  gem "jasmine-jquery-rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.4"
  gem "factory_girl_rails"
  gem "rubocop", require: false
  gem "rubocop-rspec", require: false
  gem "scss_lint", require: false
  gem "slim_lint", require: false
  gem "coffeelint"
  gem "brakeman", require: false
  gem "bundler-audit", require: false
end

group :development do
  gem "web-console"
  gem "foreman", require: false
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "spring-commands-rspec"
  gem "letter_opener"
end
