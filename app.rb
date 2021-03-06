require 'sinatra/base'
require_relative 'lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
   erb (:index)
  end

enable :sessions

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb (:bookmarks)
  end

  post '/add-bookmark' do
    Bookmark.create(params[:new_bookmark], params[:title])
    redirect '/bookmarks'
  end

 run! if app_file == $0

end
