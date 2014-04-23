class LeaveNotification < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Constants
  ###############

  ###############
  # Accessors
  ###############
  attr_accessor :todays_date

  ###############
  # Validations
  ###############
  validates :name, :send_on, :for_days, :mail_subject, presence: true

  validates :for_days, numericality: { greater_than: 0 }

  validates_with MinMaxValidator,
    fields: { min: :todays_date, max: :send_on, msg: "~send on can't be in past" }

  ###############
  # Associations
  ###############

  ###############
  # Class Methods
  ###############
  before_save :editable?
  before_destroy :destroyble?

  ###############
  # Public API
  ###############
  def todays_date
    Date.today
  end

  def editable?
    AppEnumerables::LeaveNotificationStatus::Sent.value != status
  end

  def destroyble?
    AppEnumerables::LeaveNotificationStatus::Sent.value != status
  end
  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private


end
