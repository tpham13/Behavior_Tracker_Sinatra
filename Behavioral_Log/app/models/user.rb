class User < ActiveRecord::Base  #ActiveRecord::Base ==>built-in macro methods (has many, belongs to, has many through)
    has_many :kids
    has_many :behaviorlogs, through: :kids
    validates_presence_of :name, :email, :password
    has_secure_password
  end