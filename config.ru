require 'sinatra/base'

require './controllers/application_controller'
require './controllers/account_controller'
require './models/account'


map('/') {run ApplicationController}
