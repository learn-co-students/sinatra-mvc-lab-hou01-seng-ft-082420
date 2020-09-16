require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do
        #puts params
        pig_latinizer = PigLatinizer.new
        #binding.pry
        @results = pig_latinizer.piglatinize(params[:user_phrase])
        erb :results
    end
end