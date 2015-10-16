#Blog

####Version 1.0, 16 October 2015
By Alexa Zeazas

###Description
This app allows users to create, edit, and delete blog posts, as well as tags for each post.

_Goals for future updates_
* _Add authentication so users can create profiles._
* _Mass deployment._

###Setup
1. Clone the repo by typing `git clone https://github.com/amzeazas/blog.git` into the terminal.
2. To bundle the gems, type `bundle` into the terminal.
3. To launch Postgres, type `postgres` into the terminal.
4. To create the database, type `rake db:create` into the terminal.
5. To create the tables in the database, type `rake db:migrate` into the terminal.
6. To create the test database, type `rake db:test:prepare` into the terminal.
7. Launch server by typing `rails s` into the terminal and going to `localhost:3000` in your browser.
8. You can now begin creating your blog posts!

###Technologies Used
This app was built using Ruby/Rails, Postgres, and ActiveRecord. Test tools and framework used were RSpec and Capybara.

###Legal

Copyright (c) 2015 Alexa Zeazas

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
