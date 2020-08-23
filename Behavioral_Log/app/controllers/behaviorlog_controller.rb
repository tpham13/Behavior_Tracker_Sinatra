class BehaviorLogsController < ApplicationController 

  get 'behavior_logs' do
    erb :'/behavior_logs/index'
    
  end

  # post ''

  get '/behavior_logs' do
    erb :'/behavior_logs/new'
  end

    # get '/behavior_logs/new' do 
    #     @kid = Kid.create(params)
    #     erb :'/behavior_logs/show_log'
    #   end 
  
  
    post '/behavior_logs' do      #need kid id
        @new_behavior = BehaviorLog.create
        erb :'/behavior_logs/new'
    end

    

end 