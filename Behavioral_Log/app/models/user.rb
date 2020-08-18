class User < ActiveRecord::Base  #ActiveRecord::Base ==>built-in macro methods (has many, belongs to, has many through)
    has_many :kids
    has_many :behaviorlogs, through: :kids
    # validates_presence_of :name, :email  #put codes in controller for easier read
    # validates_uniqueness_of :name, :email ##put codes in controller for easier read
    has_secure_password
  end