class KidsController < ApplicationController 

  get '/kids' do 
    if logged_in?
      @kids = Kid.all 
      erb :'/kids/index'
    else 
      redirect '/login'
    end 
  end 

  post '/kids' do   #check kid obj and check for user.id. Make sure kid has user id on them
    @kid = current_user.kids.new(name: params[:name].strip) #add kids' beahvior log later
    if @kid.save
      redirect to '/kids/new'
    end 
  end

end 