# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'
require 'pony'

set :database, "sqlite3:db.sqlite3"

class Product < ActiveRecord::Base
end

configure do
end

before do
end

get '/' do
  @products = Product.all
  erb :index
end

get '/product/:id' do
  @product = Product.find(params[:id])
  erb :product
end

post '/cart' do
  orders = params[:orders]
  @orders = parse_orders orders
  @orders.each do |order|
    order[0] = Product.find(order[0])
  end
  erb :cart
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

post '/contact' do
  @name    = params[:name]
  @email   = params[:email]
  @subject = params[:subject]
  @message = params[:message]

  hh = {:name    => 'Su nombre',
        :email   => 'Su email',
        :subject => 'Su subject',
        :message => 'su message'}

  hh.each do |key, value|
    if params[key] == ''
      @error = hh[key]
      return erb :contact if @error != ''
    end
  end

  Pony.mail(
    :from        => params[:name] + "<" + params[:email] + ">",
    :to          => 'username@example.com',
    :subject     => params[:name] + " está comunicando",
    :body        => params[:message],
    :via         => :smtp,
    :via_options => { 
      :address              => 'smtp.gmail.com', 
      :port                 => '587', 
      :enable_starttls_auto => true, 
      :user_name            => 'username', 
      :password             => 'password', 
      :authentication       => :plain, 
      :domain               => 'localhost.localdomain'
    })

  erb '¡Gracias! Email sido enviado.'
end

# Helpers ---------------------------------------------------------------------

def parse_orders orders
  s1 = orders.split(/,/)

  arr = []

  s1.each do |i|
    s2 = i.split(/=/)
    s3 = s2[0].split(/_/)
    id = s3[1]
    quantity = s2[1]

    arr2 = [id, quantity]
    arr.push arr2
  end

  return arr
end