Wudi Notepad
============

# Introduction

This is a simple and beautiful notepad:-)

Based on [Bootstrap](http://twitter.github.com/bootstrap).
Hosted on [Heroku](http://wudi-notepad.herokuapp.com).
Powered by [Rails](http://rubyonrails.org).

# Installation

```ruby
heroku config:set MAILER_DOMAIN=[...]
heroku config:set MAILER_USERNAME=[...]
heroku config:set MAILER_PASSWORD=[...]
heroku run rake db:migrate
heroku run rails console
Admin.create!({ :email => '...', :password => '...', :password_confirmation => '...' })
```

# License

It is released under the [MIT License](http://www.opensource.org/licenses/MIT).
