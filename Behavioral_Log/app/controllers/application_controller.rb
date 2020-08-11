require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :home
  end

  get '/registrations/signup' do

    erb :'/registrations/signup'
  end


  get '/registrations' do
    @user = User.new(name: params["name"], email: params["email"], password: params["password"])
    @user.save
    session[:id] = @user.id  #this log the user in once they sign-up
    redirect '/users/welcome'
  end

  get '/sessions/login' do
    erb :'sessions/login'
  end

  post '/sessions' do
    
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:id] = @user.id    
      redirect '/users/welcome'
    end
    # redirect '/sessions/login'
  end

  get '/sessions/logout' do
    session.clear
    redirect '/'
  end

  get '/users/welcome' do #not working, can it find user? did it save the user log in info?

    @user = User.find(session[:id])
    erb :'/users/welcome'
  end
end
      