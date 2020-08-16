class KidsController < ApplicationController 

get '/kids/register_kids' do 
    erb :'/kids/register_kids'
  end 

post '/kids/register_kids' do
    @kid = Kids.create(params)
    erb :'/kids/welcome_kid'
    
  end
end 