# Bookmarks Challenge Postcourse

This is a repeat of the bookmarks challenge from the Makers Coding Bootcamp.

### Steps taken in creating this project
* Project directory created and linked to github.
* `myapp.rb` created in the main folder
* Example code in `myapp.rb` shown here:
```
require 'sinatra'
get '/' do
    "Hello World"
end
```
* Run `gem install sinatra` from the command line.
* `ruby myapp.rb` to run the initial program, opened in the browser under *localhost* and the port provided in the terminal.

#### Begin creating pages
* Create a folder called `views` and a file within called `index.erb`. This will essentially be the `'/'` route.
* Render this view in `myapp.rb` using `erb(:index)`.

#### Ensure auto-reload of the server when changes are made
* Create `config.ru` file in the main directory, containing:
```
require './myapp'
run MyApp
```
* Add this to the start of `app.rb`:
```
require 'sinatra/base'
class MyApp < Sinatra::Base
```
and this to the end:
```
run! if app_file == $0
end
```
* Run `rackup` from command line to start server

The project is now ready to be constructed in full.
