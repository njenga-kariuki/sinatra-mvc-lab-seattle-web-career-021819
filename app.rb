require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    @translated_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :output_file
  end
end
