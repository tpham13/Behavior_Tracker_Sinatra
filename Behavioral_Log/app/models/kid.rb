class Kid < ActiveRecord::Base
    belong_to :users 
    has_many :behaviorlogs
end 