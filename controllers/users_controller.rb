class UsersController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  # index
  get '/users' do
    @title = "Users Index"
    @users = Users.all
    erb :'user/index'
  end

  # new
  get '/users/new' do
    "New"
  end

  # create
  post '/users' do

  end

  # show
  get '/users/:id' do
    id = params[:id].to_i
    "Show"
  end

  # delete
  delete '/users/:id' do

  end

  # edit
  get '/users/:id/edit' do
    id = params[:id].to_i
    "Edit"
  end

  # update
  put '/users/:id' do

  end
end
