require 'sinatra/base'

require './controllers/application'
require './controllers/account'
require './models/account'


map('/') {run AccountsController}
map('/dash') {run ItemsController}
