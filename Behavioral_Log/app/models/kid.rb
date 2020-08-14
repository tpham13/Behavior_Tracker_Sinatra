class Kid < ActiveRecord::Base
    belongs_to :user 
    has_many :behaviorlogs
end 