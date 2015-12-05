class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require

  enable :sessions

  ActiveRecord::Base.establish_connection(
    :adapter=>'postgresql',
    :database=>'nucleus'
  )

  get '/' do
    p 'Hello World!'
  end
  

end
