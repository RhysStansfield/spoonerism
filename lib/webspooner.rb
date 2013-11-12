require 'sinatra/base'
require_relative 'spoonerism'

class WebSpooner < Sinatra::Base

  enable :sessions
  set :session_secret, 'anything'

  set :views, File.join(File.dirname(__FILE__), '..', 'views')

  get '/' do
    erb :index
  end

  post '/submit' do 
    spooner = Spoonerism.new(params[:spoonerism])
    session[:spoonerism] = spooner.switch_word_beginnings(params[:number].to_i)
    redirect to('/')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
