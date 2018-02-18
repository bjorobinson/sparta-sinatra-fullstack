class DriversController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  # index
  get '/drivers/' do
    @title = "Drivers Index"
    @drivers = Drivers.all
    erb :'driver/index'
  end

  # new
  get '/drivers/new' do
    @driver = Drivers.new
    erb :'driver/new'
  end

  # create
  post '/drivers/' do
    driver = Drivers.new
    driver.first_name = params[:first_name]
    driver.last_name = params[:last_name]
    driver.email = params[:email]
    driver.save
    redirect '/drivers/'
  end

  # show
  get '/drivers/:id' do
    id = params[:id].to_i
    @driver = Drivers.find id
    erb :'driver/show'
  end

  # delete
  delete '/drivers/:id' do
    id = params[:id].to_i
    Drivers.destroy id
    redirect "/drivers/"
  end

  # edit
  get '/drivers/:id/edit' do
    id = params[:id].to_i
    @driver = Drivers.find id
    erb :'driver/edit'
  end

  # update
  put '/drivers/:id' do
    id = params[:id].to_i
    driver = Drivers.find id
    driver.first_name = params[:first_name]
    driver.last_name = params[:last_name]
    driver.email = params[:email]
    driver.save
    redirect '/drivers/'
  end
end
