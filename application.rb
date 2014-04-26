require 'sinatra/base'

class Application < Sinatra::Application

  def initialize(app=nil)
    super(app)

    # initialize any other instance variables for you
    # application below this comment. One example would be repositories
    # to store things in a database.

  end

  get '/' do
    erb :index, locals: { list_of_dogs: DB[:dogs].to_a }
  end

  get '/dogs/new' do
    erb :new
  end

  post '/dogs' do
    DB[:dogs].insert(name: params[:name], breed: params[:breed], puppies: params[:puppies])
    redirect '/'
  end
end