class User < ActiveRecord::Base     
  devise :database_authenticatable, :registerable,
         :rememberable, :recoverable, :validatable
end