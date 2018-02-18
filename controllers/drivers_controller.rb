class DriversController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  # index
  get '/drivers' do
    @title = "Drivers Index"
    @drivers = drivers.all
    erb :'driver/index'
  end

  # new
  get '/drivers/new' do
    "New"
  end

  # create
  post '/drivers' do

  end

  # show
  get '/drivers/:id' do
    id = params[:id].to_i
    "Show"
  end

  # delete
  delete '/drivers/:id' do

  end

  # edit
  get '/drivers/:id/edit' do
    id = params[:id].to_i
    "Edit"
  end

  # update
  put '/drivers/:id' do

  end
end
