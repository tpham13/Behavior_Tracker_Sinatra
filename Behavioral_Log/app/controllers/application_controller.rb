require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  register Sinatra::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    register Sinatra::Flash
    set :session_secret, ENV['SESSION_SECRET']
    # set :views, Proc.new { File.join(root, "../views/") }
  end

  get '/' do
    erb :'home_page/home'
  end

  helpers do 
    
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]    
    end 

  end 

end
  # get '/registrations' do
  #   @user = User.new(name: params["name"], email: params["email"], password: params["password"])
  #   @user.save
  #   session[:id] = @user.id  #this log the user in once they sign-up
  #   redirect '/users/welcome'
  # end

  # # get '/sessions/login' do
  # #   erb :'sessions/login'
    
  # # end

  # post '/sessions/' do
    
  #   @user = User.find_by(email: params[:email], password: params[:password])
  #   if @user && @user.authenticate(params[:password])
  #     session[:user_id] = @user.id    
  #     redirect '/users/welcome'
  #   end
  #   redirect '/sessions/login'
  # end

  # get '/sessions/logout' do
  #   session.clear
  #   redirect '/'
  # end

  # get '/users/welcome' do #not working, can it find user? did it save the user log in info?

  #   @user = User.find(session[:id])
  #   erb :'/users/welcome'
  # end
      