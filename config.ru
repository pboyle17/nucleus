require 'sinatra/base'

require './controllers/application'
require './controllers/account'
require './controllers/item'
require './models/account'


map('/') {run AccountsController}
map('/dash') {run ItemsController}
