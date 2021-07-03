# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require './lib/bookmark'

# this is the name of the app
class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post '/bookmarks' do
    Bookmark.create(params[:title], params[:url])
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
