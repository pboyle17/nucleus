class ItemsController < ApplicationController


  get '/' do
    erb :dash
  end

  get '/add' do
    erb :add
  end

  post '/add' do

    @product = Item.new
    @product.item_name = params[:name]
    @product.location = params[:location]
    @product.save

    @items=Item.all
    return @items.to_json
  end

  get '/list' do
    erb :list
  end

  get '/sell' do
    erb :sell
  end



end
