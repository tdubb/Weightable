class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :weights, dependent: :destroy

  has_many :friends
  has_many :friends, :through => :followings, :source => 'followed'

  has_many :followeds, :class_name => 'Following', :foreign_key => 'followed_id'
  has_many :followers, :through => :followeds, :source => :user

end
