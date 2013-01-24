require 'sinatra'
require 'sinatra/jsonp'
require 'json'

class Tubefeed < Sinatra::Base
  helpers Sinatra::Jsonp

  get '/now.json' do
    data = JSON.parse(File.read("data/now.json"))
    JSONP data
  end

  get '/tomorrow.json' do
    data = JSON.parse(File.read("data/tomorrow.json"))
    JSONP data
  end

  get '/weekend.json' do
    data = JSON.parse(File.read("data/weekend.json"))
    JSONP data
  end
end
