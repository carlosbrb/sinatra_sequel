require 'sinatra'
require 'sequel'
require 'json'
require 'require_all'
require_relative 'routes/init'
require_relative 'models/init'
require_relative 'helpers/init'

class App < Sinatra::Base
  before do
    content_type :json
  end

  get '/' do
    {message: 'Hello World'}.to_json
  end
end
