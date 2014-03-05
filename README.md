## Starting up:


At the command line:

     rails _4.0.2_ new united_tweets






## Advanced

### Add the gems

    # new gems
    gem 'bootstrap-sass', '~> 3.1.1'
    gem "friendly_id"
    gem 'hashie'
    gem 'meta-tags', :require => 'meta_tags'
    gem 'pry-rails'
    gem 'slim-rails'

    group :test, :development do
      gem 'rspec-rails'
      gem "spring"
      gem "spring-commands-rspec"
    end


    group :test do
      gem 'capybara'
      gem 'database_cleaner', '=1.0.1'
      gem 'factory_girl_rails'
      gem 'timecop'
      gem 'vcr'
      gem 'webmock'
    end


### Config the generators
  
     config.generators do |g|
        g.test_framework      :rspec,        :fixture => false
        g.assets false
        g.helper false
      end


### Generate the model

rails g model Congressmember first_name:string last_name:string middle_name:string birthday:date gender:string latest_term_id:integer bioguide_id:string