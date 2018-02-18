require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/users.rb'
require_relative './controllers/users_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  UsersController
])
