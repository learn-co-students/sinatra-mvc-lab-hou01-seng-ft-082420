require_relative "config/environment"

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end
  post "/piglatinize" do
    init = PigLatinizer.new
    @phrase = init.piglatinize(params[:user_phrase])
    erb :new_phrase
  end
end
