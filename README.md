A test app for learning Rails and data

- Rails 4.0.2
- Ruby 1.9.3

### Version 0.0.1

At the command line:

~~~shell
rails _4.0.2_ new united_tweets
cd united_tweets
rails server
~~~

In the browser, visit:

[http://127.0.0.1:3000](http://127.0.0.1:3000)

Or simply: [http://localhost:3000](http://localhost:3000)


### Version 0.0.2

    rails generate scaffold Congressmember first_name:string last_name:string party:string state:string


This creates:

      invoke  active_record
      create    db/migrate/20140228010132_create_congressmembers.rb
      create    app/models/congressmember.rb
      invoke    test_unit
      create      test/models/congressmember_test.rb
      create      test/fixtures/congressmembers.yml
      invoke  resource_route
       route    resources :congressmembers
      invoke  scaffold_controller
      create    app/controllers/congressmembers_controller.rb
      invoke    erb
      create      app/views/congressmembers
      create      app/views/congressmembers/index.html.erb
      create      app/views/congressmembers/edit.html.erb
      create      app/views/congressmembers/show.html.erb
      create      app/views/congressmembers/new.html.erb
      create      app/views/congressmembers/_form.html.erb
      invoke    test_unit
      create      test/controllers/congressmembers_controller_test.rb
      invoke    helper
      create      app/helpers/congressmembers_helper.rb
      invoke      test_unit
      create        test/helpers/congressmembers_helper_test.rb
      invoke    jbuilder
      create      app/views/congressmembers/index.json.jbuilder
      create      app/views/congressmembers/show.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/congressmembers.js.coffee
      invoke    scss
      create      app/assets/stylesheets/congressmembers.css.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.css.scss



Run migrations:

    rake db:migrate

which gets you this:

    ==  CreateCongressmembers: migrating ==========================================
    -- create_table(:congressmembers)
       -> 0.0007s
    ==  CreateCongressmembers: migrated (0.0007s) =================================


Now re-run the server:

    rails server

or:

    rails s

Again, visit the local server:

[http://127.0.0.1:3000](http://127.0.0.1:3000)

Same thing, but now we actually have a path:

http://localhost:3000/congressmembers

TKIMG


Click [__New Congressmember__](http://localhost:3000/congressmembers) and notice how it takes you to this path:

http://localhost:3000/congressmembers






