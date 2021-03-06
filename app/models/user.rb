class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
#devise :database_authenticatable, :registerable, :omniauthable,
#:recoverable, :rememberable, :trackable, :validatable

  has_many :authentications
  has_many :posts
  has_many :comments


email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


#	validates :name, :password :presence => true 
#	validates :email, :presence => true,
#			:format => { :with => email_regex },
#			:uniqueness => true
# 
end
