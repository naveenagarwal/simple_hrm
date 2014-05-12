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

  ##############
  # Scopes
  ##############
  scope :active, -> { where(status: [STATUS[:active], nil]) }
  scope :inactive, -> { where(status: STATUS[:inactive]) }
  scope :terminated, -> { where(status: STATUS[:terminated]) }

  ##############
  # Accessors
  ##############
  attr_accessor :send_email

  ##############
  # Validatons
  ##############
  validates :role_id, presence: true

  ###############
  # Associations
  ###############
  belongs_to  :role, counter_cache: true

  has_one     :profile, as: :profileable, dependent: :destroy

  has_one     :user_work_shift
  has_one     :work_shift, through: :user_work_shift, dependent: :destroy

  has_many    :documents, as: :creator, dependent: :destroy
  has_many    :leaves, class_name: "Leave", dependent: :destroy

  has_many    :timesheets, dependent: :destroy
  has_many    :timesheet_entries, through: :timesheets

  ###############
  # Class Methods
  ###############

  ###############
  # Public Api
  ###############
  def disable(with: :inactive)
    update_attribute :status, STATUS[with]
  end

  def send_email
    return true if @send_email.nil?
    @send_email
  end

  ###############
  # Private Api
  ###############

end
