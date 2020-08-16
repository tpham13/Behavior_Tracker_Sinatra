class BehaviorLogsController < ApplicationController 

    get '/behaviors/log' do 
        erb :'/behaviors/logs'
      end 
    
    post '/behaviors/log' do
        @log = BehaviorLog.create(params)
        
        
      end
    end 