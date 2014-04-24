class Leave < ActiveRecord::Base
  ###############
  # Includes
  ###############

  ###############
  # Constants
  ###############

  ###############
  # Accessors
  ###############
  attr_accessor :tomorrows_date

  ###############
  # Validations
  ###############
  validates :user_id, :leave_type_id, :from, :to, :comment, :status, presence: true

  validates_with MinMaxValidator,
    fields: { min: :tomorrows_date, max: :from, msg: "~From should be greater then today's date" }

  validates_with MinMaxValidator,
    fields: { min: :from, max: :to, msg: "can't be before \"From\"" }

  validates_with LeaveOverlapValidator

  ###############
  # Callbacks
  ###############

  ###############
  # Associations
  ###############
  belongs_to :user
  belongs_to :leave_type

  ###############
  # Class Methods
  ###############

  ###############
  # Public API
  ###############
  def tomorrows_date
    Date.today + 1.day
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
