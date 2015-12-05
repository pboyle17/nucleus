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
    @items=Item.all
    erb :list
  end

  get '/sell' do
    erb :sell
  end

  post '/update/:id' do
    @item=Item.find(params[:id])
    erb :update
  end

  get '/confirmation' do
    erb :confirmation
  end




end
