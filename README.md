#Blog

####Version 1.1, 23 October 2015
By Alexa Zeazas

###Description
This blog app allows the admin to create, edit, and delete posts and tags. Users can view these posts and can sign-up to comment on posts.

_Goals for future updates_
* _Add AJAX to create new tag in new/edit post form._

##Demo
* Visit [http://radiant-beach-2644.herokuapp.com/](http://radiant-beach-2644.herokuapp.com/) for a demo.

##Setup

###Installation
1. `git clone <repository-url>` this repository
2. `cd` into the new directory
3. `bundle install`
4. `postgres`
5. `rake db:create`
6. `rake db:migrate`

###Running / Development
1. `rake db:test:prepare` to create test database
2. `rails server`
3. Visit your app at [http://localhost:3000](http://localhost:3000).

##Technologies Used

Programming Language
* Ruby
* Javascript
* HTML/CSS

Web Application Library
* Ruby on Rails
* jquery
* AJAX
* ActiveRecord

Test Tools
* RSpec
* Capybara
* SimpleCov
* PhantomJS
* Poltergeist

##Legal

Copyright (c) 2015 Alexa Zeazas

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
