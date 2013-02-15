class Users < ActiveRecord::Base
  attr_accessible :password, :role, :user_name
end