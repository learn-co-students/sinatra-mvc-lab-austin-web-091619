require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end
    post '/piglatinize' do
        piggy = PigLatinizer.new()
        text = params["user_phrase"]
        @return = piggy.piglatinize(text)
        erb :return
    end
end