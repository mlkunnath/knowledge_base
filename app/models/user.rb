class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable, 
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :name, :presence => true, :length => {:maximum => 100 }
  validates :lastname, :presence => true, :length => {:maximum => 200 }
end
