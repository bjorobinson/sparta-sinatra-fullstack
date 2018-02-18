require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/drivers.rb'
require_relative './controllers/drivers_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  DriversController
])
