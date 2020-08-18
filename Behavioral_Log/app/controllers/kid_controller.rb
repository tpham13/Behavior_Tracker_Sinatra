class KidsController < ApplicationController 

  get '/kids/register_kids' do 
    erb :'/kids/register_kids'
  end 

  post '/kids/register_kids' do   #check kid obj and check for user.id. Make sure kid has user id on them
    @kid = Kid.create(params)
    erb :'/kids/welcome_kid'
  end

end 