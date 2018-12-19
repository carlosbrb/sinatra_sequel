class App < Sinatra::Base
  get '/v1/root' do
    'Test endpoint'
  end
end
