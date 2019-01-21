require 'sinatra'
require 'sinatra/cross_origin'
require 'sequel'
require 'sequel/plugins/serialization'
require 'json'
require 'require_all'
require_relative 'db/connect'
require_relative 'routes/init'
require_relative 'models/init'
require_relative 'helpers/init'


Sequel::Model.plugin :json_serializer

class App < Sinatra::Base
  configure do
    enable :cross_origin
  end

  before do
    # Change this header for the allowed hosts only, * is not recommended!
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Allow'] = 'HEAD,GET,PUT,PATCH,DELETE,OPTIONS,POST'
    response.headers['Access-Control-Allow-Headers'] = 'Accept, Authorization, Content-Type'
    content_type :json
  end

  get '/' do
    { message: 'Hello World' }.to_json
  end

  # Allow all options calls (CORS standard)
  options '*' do
    response.headers['Allow'] = 'HEAD,GET,PUT,PATCH,DELETE,OPTIONS,POST'
    response.headers['Access-Control-Allow-Headers'] = 'Accept, Authorization, Content-Type'
    response.headers['Access-Control-Allow-Origin'] = '*'
    200
  end
end
