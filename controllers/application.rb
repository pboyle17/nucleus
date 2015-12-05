class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require

  enable :sessions

  ActiveRecord::Base.establish_connection(
    :adapter=>'postgresql',
    :database=>'nucleus'
  )

  set :views, File.expand_path('../../views',__FILE__)

  get '/' do
    erb :login
  end

  get '/login' do
    erb :login
  end


end
