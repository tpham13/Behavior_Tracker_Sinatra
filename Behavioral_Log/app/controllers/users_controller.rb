class UsersController < ApplicationController 
    get '/users/signup' do 
      erb :'users/signup' #now create 'signup.erb' under views/users
    end 

    post '/users/signup' do
      # binding.pry---couldn't get pry to open
      @user = User.create(params)
      erb :'/users/welcome'
      
    end
end 