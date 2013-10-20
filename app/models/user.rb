class User < ActiveRecord::Base
  
  has_many :items_users
  has_many :items, :through => :items_users
end
