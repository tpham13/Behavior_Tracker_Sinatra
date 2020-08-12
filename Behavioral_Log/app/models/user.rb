class User < ActiveRecord::Base  #ActiveRecord's built-in ORM methods. 
    has_many :kids
    validates_presence_of :name, :email, :password
  end