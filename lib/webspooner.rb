require 'sinatra/base'

class WebSpooner < Sinatra::Base
  get '/' do
    'Hello WebSpooner!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
