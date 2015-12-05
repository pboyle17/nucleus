class AccountsController < ApplicationController



  get '/login' do
    erb :login
  end

  post '/login' do

    @account=Account.new
    @account.user_name=params[:user_name]
    @account.password_digest=params[:password_digest]
    @account.save
    @accounts=Account.all

    return @accounts.to_json


  end

  get '/' do
    erb :login
  end

end
