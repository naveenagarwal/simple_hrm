class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable
  devise :database_authenticatable, :recoverable, :rememberable,
          :trackable, :validatable

  ###############
  # Associations
  ###############
  has_one :profile, as: :profileable, dependent: :destroy

end
