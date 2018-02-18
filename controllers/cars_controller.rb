class CarsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  # index
  get '/cars/' do
    @title = "Car Index"
    @cars = Cars.all
    erb :'car/index'
  end

  # new
  get '/cars/new' do
    @car = Cars.new
    erb :'car/new'
  end

  # create
  post '/cars/' do
    car = Cars.new
    car.car_make = params[:car_make]
    car.car_model = params[:car_model]
    car.production_year = params[:production_year]
    car.save
    redirect '/cars/'
  end

  # show
  get '/cars/:id' do
    id = params[:id].to_i
    @car = Cars.find id
    erb :'car/show'
  end

  # delete
  delete '/cars/:id' do
    id = params[:id].to_i
    Cars.destroy id
    redirect "/cars/"
  end

  # edit
  get '/cars/:id/edit' do
    id = params[:id].to_i
    @car = Cars.find id
    erb :'car/edit'
  end

  # update
  put '/cars/:id' do
    id = params[:id].to_i
    car = Cars.find id
    car.car_make = params[:car_make]
    car.car_model= params[:car_model]
    car.production_year = params[:production_year]
    car.save
    redirect '/cars/'
  end
end
