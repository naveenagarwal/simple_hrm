class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable
  devise :database_authenticatable, :recoverable, :rememberable,
          :trackable, :validatable

  ##############
  # Constants
  ##############
  STATUS =  {
    active: 0,
    inactive: 1,
    terminated: 2
  }

  ###############
  # Associations
  ###############

end
