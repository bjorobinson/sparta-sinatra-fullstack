require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/users_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  UsersController
])
