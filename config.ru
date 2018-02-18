require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/drivers.rb'
require_relative './models/cars.rb'
require_relative './controllers/drivers_controller.rb'
require_relative './controllers/cars_controller.rb'
require_relative './controllers/static_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  DriversController,
  CarsController,
  StaticController
])
