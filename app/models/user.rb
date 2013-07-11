class User < ActiveRecord::Base
  attr_accessible :fname, :lname, :password, :robotName, :email
end
