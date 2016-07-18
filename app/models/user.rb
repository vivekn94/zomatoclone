class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 # before_action :authenticate_user!

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews,dependent: :destroy
  has_many :comments,dependent: :destroy
    acts_as_followable
    acts_as_follower

end
