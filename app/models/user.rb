class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :password
  has_many :decks
  
  
  
end
